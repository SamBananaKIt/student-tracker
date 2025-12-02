$file = "c:\Users\Nice\Tracker\index.html"
$content = Get-Content $file -Raw

# Helper to replace unique strings
function Replace-String {
    param ($Target, $Replacement)
    $global:content = $global:content.Replace($Target, $Replacement)
}

# --- HTML Structure ---
# Confirm Modal
Replace-String 'bg-white rounded-2xl shadow-2xl w-full max-w-sm p-6 transform scale-95 opacity-0 transition-all relative z-10"' 'bg-white dark:bg-slate-800 rounded-2xl shadow-2xl w-full max-w-sm p-6 transform scale-95 opacity-0 transition-all relative z-10"'
Replace-String 'text-lg font-bold text-center text-slate-800 mb-1" id="confirmTitle"' 'text-lg font-bold text-center text-slate-800 dark:text-slate-100 mb-1" id="confirmTitle"'
Replace-String 'text-sm text-center text-slate-500" id="confirmMessage"' 'text-sm text-center text-slate-500 dark:text-slate-400" id="confirmMessage"'
Replace-String 'border-slate-200 text-slate-600 font-bold text-sm hover:bg-slate-50 btn-press">ยกเลิก' 'border-slate-200 dark:border-slate-700 text-slate-600 dark:text-slate-300 font-bold text-sm hover:bg-slate-50 dark:hover:bg-slate-700 btn-press">ยกเลิก'

# Add Student Form
Replace-String 'bg-white p-6 rounded-2xl shadow-sm border border-slate-100 mb-6 no-print animate-entry"' 'bg-white dark:bg-slate-800 p-6 rounded-2xl shadow-sm border border-slate-100 dark:border-slate-700 mb-6 no-print animate-entry"'
Replace-String 'text-slate-700 mb-2 flex items-center gap-2"' 'text-slate-700 dark:text-slate-200 mb-2 flex items-center gap-2"'
Replace-String 'bg-slate-50 hover:bg-white"' 'bg-slate-50 dark:bg-slate-900 dark:text-white hover:bg-white dark:hover:bg-slate-800"'

# Search & Filter
Replace-String 'border-slate-200 focus:outline-none focus:ring-2 focus:ring-teal-500 bg-white shadow-sm"' 'border-slate-200 dark:border-slate-700 focus:outline-none focus:ring-2 focus:ring-teal-500 bg-white dark:bg-slate-800 dark:text-white shadow-sm"'
Replace-String 'bg-white shadow-sm text-sm font-bold text-slate-600 cursor-pointer"' 'bg-white dark:bg-slate-800 dark:text-white shadow-sm text-sm font-bold text-slate-600 dark:text-slate-300 cursor-pointer"'
Replace-String 'bg-white px-4 py-2 rounded-xl border border-slate-200 shadow-sm flex items-center gap-2 text-sm font-bold text-slate-600"' 'bg-white dark:bg-slate-800 px-4 py-2 rounded-xl border border-slate-200 dark:border-slate-700 shadow-sm flex items-center gap-2 text-sm font-bold text-slate-600 dark:text-slate-300"'

# Main Content
Replace-String 'bg-white rounded-2xl shadow-sm border border-slate-100 overflow-hidden min-h-[300px] animate-entry"' 'bg-white dark:bg-slate-800 rounded-2xl shadow-sm border border-slate-100 dark:border-slate-700 overflow-hidden min-h-[300px] animate-entry"'
Replace-String 'bg-slate-50/50 text-slate-600 text-sm uppercase tracking-wider border-b border-slate-100"' 'bg-slate-50/50 dark:bg-slate-700/50 text-slate-600 dark:text-slate-300 text-sm uppercase tracking-wider border-b border-slate-100 dark:border-slate-700"'

# Manage Modal
Replace-String 'bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[85vh] flex flex-col transform scale-95 opacity-0 transition-all relative z-10"' 'bg-white dark:bg-slate-800 rounded-2xl shadow-2xl w-full max-w-2xl max-h-[85vh] flex flex-col transform scale-95 opacity-0 transition-all relative z-10"'
Replace-String 'p-6 border-b border-slate-100 flex justify-between items-center bg-white rounded-t-2xl"' 'p-6 border-b border-slate-100 dark:border-slate-700 flex justify-between items-center bg-white dark:bg-slate-800 rounded-t-2xl"'
Replace-String 'text-xl font-bold text-slate-800 flex items-center gap-2"' 'text-xl font-bold text-slate-800 dark:text-slate-100 flex items-center gap-2"'
Replace-String 'p-6 overflow-y-auto flex-1 space-y-6 bg-slate-50/50"' 'p-6 overflow-y-auto flex-1 space-y-6 bg-slate-50/50 dark:bg-slate-900/50"'
Replace-String 'bg-white p-5 rounded-xl border border-slate-200 shadow-sm"' 'bg-white dark:bg-slate-800 p-5 rounded-xl border border-slate-200 dark:border-slate-700 shadow-sm"'

# --- JS Render Functions ---
# Tabs
Replace-String 'bg-white text-slate-600 hover:bg-slate-50 border border-slate-200' 'bg-white dark:bg-slate-800 text-slate-600 dark:text-slate-300 hover:bg-slate-50 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700'

# Table
Replace-String 'bg-slate-50 border-b border-slate-100' 'bg-slate-50 dark:bg-slate-700 border-b border-slate-100 dark:border-slate-700'
Replace-String 'font-bold text-slate-700' 'font-bold text-slate-700 dark:text-slate-200'
Replace-String 'border-b border-slate-50 hover:bg-slate-50/50' 'border-b border-slate-50 dark:border-slate-700 hover:bg-slate-50/50 dark:hover:bg-slate-700/50'
Replace-String 'bg-slate-100 rounded-full h-1.5' 'bg-slate-100 dark:bg-slate-700 rounded-full h-1.5'
Replace-String 'border-2 border-slate-200 peer-checked' 'border-2 border-slate-200 dark:border-slate-600 peer-checked'

# Mobile Cards
Replace-String 'bg-white rounded-xl border border-slate-200 shadow-sm' 'bg-white dark:bg-slate-800 rounded-xl border border-slate-200 dark:border-slate-700 shadow-sm'
Replace-String 'p-4 flex items-center justify-between bg-white cursor-pointer' 'p-4 flex items-center justify-between bg-white dark:bg-slate-800 cursor-pointer'
Replace-String 'font-bold text-slate-800' 'font-bold text-slate-800 dark:text-slate-100'
Replace-String 'border-t border-slate-100 bg-slate-50/50' 'border-t border-slate-100 dark:border-slate-700 bg-slate-50/50 dark:bg-slate-900/50'
Replace-String 'bg-white rounded-lg border border-slate-100' 'bg-white dark:bg-slate-800 rounded-lg border border-slate-100 dark:border-slate-700'

# Manage Modal (JS)
Replace-String 'bg-white border border-slate-200 rounded-xl overflow-hidden' 'bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl overflow-hidden'
Replace-String 'bg-slate-50 p-3 flex justify-between' 'bg-slate-50 dark:bg-slate-700 p-3 flex justify-between'
Replace-String 'bg-white border border-slate-200 px-2' 'bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 px-2'
Replace-String 'hover:bg-slate-50 p-2' 'hover:bg-slate-50 dark:hover:bg-slate-800 p-2'

Set-Content -Path $file -Value $content -Encoding UTF8
