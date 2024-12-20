#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'
input = <<-AOC
FJ7.FF--|--|-|J.FL7FL7LJ7F7-F.-7.FF7F|F-JJ-F----JF77.-JJFJ--|7FF7L-7.--LF.FJ-FL7JFF-77|F----F-|-F77LJ---F-L-L-77-.FJ.F77FJF7.LFJ7-|.FF-7--7.
7.L--7|.|.||F7L7J.L7L7LLF-JFJ7JL-JL77L7|||.J-JF|LFFJ-JJFLJ..7-7-J7|.FL-|LF||.----L.|JF|7JL-L-7|7.L-.F-7---J-L-J|LLJ.-F--|LFL7-F.J7L|J.F|J||7
L.|L|L--.7J||JF777-J-7JF7LFJJ|-J-|-|7F-7F7-|J7L|-FF..L7L|.F7L7.FL7JFL7-|--F-7LF.FJ.7.LJ-F--F|F7--.L77.|-LF7.|-L||FF7.7FLF7.L|-7-F7||.--|--LJ
.LF7..|77L-L7J|.LF7.FF-LJFJJ7L7JFJJ.7JL|||.L.F7LF7.L.L-||7F7.LLF-7.LLL7J||LF7F|.LJFF7F|-LJ.-J|L7.J7F7F|.LFJ7JF.LJ7.F-|7L7JF-|-J-J.F7F|7|-7J.
.FFJF-JLLJ7.L7-.JLF-FJJ7F7|F7.JJL-L|.|FL|J7L|JF7.L7L|J.L|-F777-7.F-J-LF-F7.7JF|7|F------JJF..J|L.FL||77--.FF7J7|77.|.LL.J-L-L-L7LFFJFJ-JL|LF
F77|-|7J|L-7FF77LF|-J7-L7J|-JF|.L7.F---|LF7F7J|L7.|-|LF7|FJL-7FF7J7-FF|F7-FL-F-7-JJ--7F7.FL7.FLJ|7-||F7LFF-J|F-J-77J.L|F|7FFJ.-7.77-J.||FLF7
F-7F7.7-L-J7||F7||.LJJ.LJ7LJ-|LJ-77.LL-F7||||FJFJ7JF|--J7|F-7L7||77.FJ|L||||7L7L7JJ-|LF7FF7F7F7F-7FJ|||F7L-7|7J.LJ||FJL7L|F-7.L|-|L-.FF|7.LL
LFLJ|-7..-JL-F-7-77JLJ7JL-77.L7J-F7F7LFJLJ||||FJ77-FL7|L-||-L7LJ|JF7L7-LF-7F7-L7L-7F--J|-F-JFLLL7|L7||LJL7FJL777J-7F|-F|JLL-7-.|FLJ77F7||-F.
-L7L7L7.FLJ|JL.LF|J|7L|FJF----F-7|||L7L--7||LJL--77L|LJ7JLJ-F|F-JF-7-F7-L7LJL7FJF-JL--7L-7LF7L|-|L7|||F--JL-7L77|7FLJFJJ7.FFJLL|F|.L7LL7|.-J
.|-.F-.F|JL7-J.F|LF-F7-7L7F--LL7LJLJFJF77|||F----J77|.||7JLF7|||LL7|J||7-L--7|L7L7F7F-JF-JFJL7--L7||LJL---7||FJJFFJJ-J7FJ7-J-7JJ-77||.|-LL77
7|7.||.-7.J|LJFJL7..LL7|F7-7JF7L--7FJFJ|FJLJ|F7F7LF77-J|F--JLJL7-FJ|FJL7F7-|||FJFJ||L-7L7FJF-J|7FJ|L7F----J-|L-7.|.L7LJJ|F7L-7--JF7JJ.77-L-F
F|77FJ77L7-|..|.7J7F|JLL|--F-JL---JL7L7LJF--J|||L7||J7LLL7F---7|FJFJL-7LJL7FJ|L7|FJL-7|FJL7|F7F7L7|FJ|F7F-7FJF-JF77F|7L7-LLLJL-|-|J|7----L-J
LLF-|-77-LFJJ.7.L|FF-F.|L|FJF7F----7L7L-7L-7F|||FJ||F7-7|LJF--J||FJF-7|F--JL7|FJLJF--J||F7|LJLJ|FJLJFJ|||FJ|FJF7||JFF77F7.L.FL-F.|.LJLL|JLF7
.|LLLJ.|-F7|.F|--|-J7|-|-LL-JLJF--7|FJLFJF-JFJLJL-JL7LLF7LLL7F7LJL7|FJ|L-7F7||L--7L7F-JLJ||F--7LJF--J-|LJL-J|FJLJ|F7||7.|..--7-|7.L-F7JLFJ|J
LJ7JLF-L7JL--L7JFJLJ-|LLJ|LF---JF7LJ|F7L7L7F|F7F7F--J--||7.FJ|L-7FJ||FJF-J||||7F7L7LJF--7|LJF7L-7|F--7|F7F--JL7F-J|||L-7F77JFJ.||.|FJJJ.|-JJ
.---7LLLJL--7-JFLJF7-77J.-7L-7F-JL7FJ||-L7L-J||||L7F77FJ|F7L-JF-J|FJ|L7L7FJLJL-J|FJF7L-7LJF-J||FJLJF-JLJ||F7F7||7FJ||F-J||7-L-F-77FF7.F-|.L|
-7.FL7.|L7|.|JL-J.F77LF-7LF-7LJ7F7||.||F-JF--J||L7||L7|FJ||J|FL-7||FJFJFJL---7F-J|FJ|F7L-7L-7L-JF7FJF7F7|||LJLJL-JFJ|L7FJL7.LFJ.L||.|-7-F77F
F77|J|F|LJ7-F7|L7-JL-FJFJFJFJF--JLJL-J||F7L--7|L7||L7||L7|L-7F-7|||L7L7|LF-7FJL7FJ|LLJL--JF7L-7FJ|L7||||||L--7F---JF|FJ|F-JF7-F7-|7-|7|FL-7|
LLL--L-L7-77LJ--||LJ.L7L7|FJ.L---7F-7FJLJ|F--JL-JLJ||LJFJ|F-JL7LJLJFJFJL7|FJL-7LJFJF-7LF7FJL7FJL7L-J||||||F7FJL7F7JFJL7||F7|L-JL7L|7J-7J.L|J
FJ.J7LFL|-JF|.|FL-LF||L7|||F7F7F7||.LJF7FJL-7F7F7FF7L-7L7|L7F7L7F--JLL-7||L--7L7FJL|FJFJ|L7FJL7FJF7||LJ|||||L-7LJL7L-7LJ||||F---J-FJ-|.L77||
|J-L---|L.||JFJ.|.FLFF-JLJLJ||||LJL-7.||L-7FJ|LJ|FJL-7L7||FJ|L-JL7F7JF7|||F--JL|||FJL7L7|7||F7|L-JL7|F-J||||F7|F--JF-JF7LJLJL-7FF7||.77.-LFJ
L-7L|77FF-7LFJL-77|J|L-----7LJ|L-7F-JFJL--JL7|F-JL7F-J||LJ|FL---7||L7|LJLJ|F7F-JL7|F-JFJ|FJ|||L7F--J|L7FJ||||LJ|F7FJF-JL------JFJ|JJ7..F|-|7
|.FJLLLJ|FLJ|.7J.||.F-----7L-7L--JL-7L-7F-7FJ||F-7|L7F7L-7L-7F--J||FJL-7F-J||L--7LJL7FL7|L7LJ|J|L-7-|FJ|FJ||L-7LJ|L7|7F--------JFJ|7F7.L7-7J
FJ7FFJL||JJF--L7-L7-L----7|F7L---7F-JF7LJFJL-J|L7||FJ||FFJF-JL--7||L-7J|L--J|F--JF--JF-JL7L-7L7|F-JFJ|FJ|FJ|F-JF-J-|L-JF7F----7FJJ-|7JF|J.|7
7..J7|FFL7F|7.FF7-F--7F--JLJL7F7J||.FJ|LFJF---JFJLJL7|L-JFJ|F7F-JLJF-JFJF---JL7F7L7F7L--7|F7|FJ|L-7|FJ|FJL7|L-7L7F-JF--J|L---7|L7J-JL-F.L7L7
7--7L--7JFJL7|7|||L-7|L-----7|||FJL7L7|FJFJJF-7L--7FJL--7L-7||L--7FJF7L7L7LF7LLJ|FJ||F7FJ||LJL7L7FJ||7|L7FJ|F7|FJL-7|-F7L----JL-J|.JF|F-7.-.
|FJ|7J|F-|JLF7FJL7F-JL7F----J|||L7FJ7||L7L--JFJ|F7|L-7F-JF-J|L7F-J|7||FL7|FJL-7FJL7||||L7|L-7FJFJL-JL7|FJ|FJ|LJ|F7.|L7|L7F---7F7LL7LL7L7.|.F
FL7LL-FJ.|7.|LJF-JL--7|L----7LJL7||LFJL-JF---JF-J||F-JL-7|F7L7|L-7L-JL7.|||F--JL-7|||||FJL7F||FL7F-7FJ|L-JL7L-7||L7|FJ|FJ|F--J|L7L|.F|7LJ---
JJF.L-7J7.--L-7L7JF-7|L-7F-7L7F7LJL7L---7L---7L-7|||F7F7|LJ|FJL7J|F--7|FJ|||F7F--JLJ|||L-7|FJL7FJL7LJ||F---JF-J|L7LJL7|L-JL---JFJJLJ7LJ..F.J
F-L7..|JLJLF-7L7||L7LJF-JL7L7LJL7F-J.F7FJF---J-FJLJLJ||LJF-JL-7|FJL7-LJL7||LJ|L--7F7LJL7FJ|L7FJ|F-J|F7||F7F7L-7|FJF-7LJF7F7F7F7L7||.-7.77LJJ
LJ-L7-F.FJFL7L-JL7FJF7L-7FL7L---JL-7FJ|L7L-7|F7L--7F-JL7FJF-7FJ|L7FJF7JFJLJF-JJF7||L---JL7L7|L-JL7F7|LJ|||||F-JLJFJ.L7FJLJLJLJL-JFFF---77|7|
|F7L|-LFJ||FJF--7|L-J|F-JF7|F----7FJL7|FJF-JFJ|F7FJ|F7FJL7|FJL7L7|L7|L7|F-7L-7FJ||L7F7F7FJFJL7F-7LJLJF-J|||||F---JF7FJL---7FF7F7F7F7F|7LF7-J
L-7F7..|.F7L-JF7||F7FJ|F7|LJ|F---JL7FJ||FJF7L7|||L7||||F-J|L7-|FJL7||FJLJJL7FJL7||FJ||||L7L7FJ|FJF---JF7|||LJL---7||L7F7F7L-JLJLJLJL-77.-|||
FJ7FL7JFF||F7FJLJ|||L7|||L--JL----7|L7LJ|FJ|FJ||L7|LJ|||F7L7L7|L7FJ||L7F7F7||F7|||L7||||FJFJL-JL7L7F-7|LJ||F-----J|L7|||||F--7F7F---7|JFJL7|
FJF--7|F7|||||F-7|||FJ|||-F7F7F---JL7|F-J|FJL7|L7|L7FJ||||7|FJ|FJL7|L7||||||||||||FJ|||||FJFF7F7|FJL7|L-7LJL----7FJFJLJLJLJ.FJ|||7LLLJJF7|L|
|LJL7LFJLJLJLJL7||||L7||L7|||LJF---7|||F7|L7FJ|FJL7||FJLJL7||FJ|F7|L7|||||LJ||||||L7|||||L7FJLJ|||F7|L7FJF7F-7F7LJFJF7LF---7L-JLJ77FLF7L|77|
L77F|FL-7F-7F--J|LJL7||L7|||L--JF--J||||||FJ|FJ|JFJ||L7F--J|||FJ||L7||||||7FJ|LJ||7||||||L|L-7FJ||||L7||FJLJ.LJL--JFJL7|F--J.F--7JL||||F7L7|
|LJ-|JJFJL7||F--JF-7LJ|FJLJ|F7F7L--7LJLJ||L7|L7L7L7||FJL7F7|LJL7|L-J||LJ|L7|FJF-JL7|||||L7|F-J|FJ|||FJLJL---7F7|F--JF-J|L--7FJF7|LF|7|L7J-LF
|LF|J7FL7FJ||L---J7L7FJL-7FJ|LJL-7FL---7||FJL7L7|FJ|LJLFJ|LJJF7||F--JL7FJFJ||JL7F7||||||FJ||-FJ|JLJ||7F7FF-7LJL-JF-7L--JF-7||FJLJLFF7|FJ..L.
LJLF.FF-JL7LJJF7F7F7||F--JL7L---7L----7|LJL-7|FJ||FJF-7L7L--7|LJ|L-7F7|L7L7||F-J||||||||L7|L7L7|F--J|FJ|FJ|L7F--7L7L---7L7LJ|L-7JF-JLJ|F7-FF
|7|JF|L---JF--JLJLJLJLJF--7L7F7-L---7FJL7F--J||FJ|L7L7L-JF--J|F7L7FJ|LJLL7||||F-J||LJLJL-J|FJFJ||F7FJL7|L--7LJF7L-JF--7L-JF7|F-J7L7F--J||-F7
77LF7|7.|JLL7F-----7F--JF7L7LJL-----JL--JL7F7|||FJFJJL7F7L--7|||FJL7L--7FJ|||||F-JL------7|L7L7|LJ||F-JL7F7L-7|L---JF-J7F7||||F7-FJ|F--J|-J|
FL7.J.FJ|J|-LJF----J|F--JL-JF----7F7F--7F7||LJLJL-JFF7|||F7FJ||||F7|F-7|L7|LJLJL-7F--7F-7|L7|7LJF7LJL--7LJL--J|F---7L---JLJLJLJL7L7LJF--JJ7J
JJ-77-J7LFFF--JF--7FJL7F-7F7|F--7LJLJF-J||LJF7F7F--7|LJ|||LJ.LJ|||LJL7|L7||F-----JL7FJL7||FJ|F--JL7LF-7L------JL--7L7F------7F-7L-JF-JLF|-F7
L|JL|L|F.F7L--7|F-J|F-JL7LJLJL-7L----J.FJ|FFJLJLJF7||F-J||F----J||F7FJ|FJ||L-7F7F7FJL--JLJL7|L7F-7L7|FJF7F--------J.LJFF77F7LJJ|F-7|7FFL77L|
FL7-J-FF-JL---J||F7|L7F-JF-----JF7F7JF7|FJFJF-7F-J||||F-J|L7F7F-JLJ|L7||7||F-J||||L---7F--7||FJ|FL7LJL-J|L-------------JL-JL--7LJF|L7-7J.L7|
FLL7LJFL-----7FJ||LJ7LJF7L-7F7F-JLJL-J|||FJFJFJL-7||LJL7FJFLJ||F7-FJFJ|L7LJL-7|LJ|F--7LJF7|LJL-JF7L7F7F7L---7F7F---7F---7F-7F-J-F-JFJ--7FLF-
L|FLJ.F-7F---J|J||7F---JL7J||||F-7F---J|LJFJ-L-7FJLJLF-J|F---JLJL7|FJ|L7L7F--J|F-J|F7|F-JLJ|F---JL7LJ||L---7LJLJF-7|L--7||FJL--7L7FJJL|L7|||
L-|7FFL7LJF--7|FJL7L7F--7L-J|LJL7|L7F7F|F-JF7F7LJF77FJF-JL7F7F-7FJ|L--7|FJ|F-7||F7LJ||L----7L----7L--J|F---JF---JFJL7F7||||F7F7L7LJ-F-F7L|FL
L|LL-F-JF7|F-J||F7L7||F-JF-7|F--JL-J|L-JL--JLJL-7|L7L7|F--J|LJFJ|L|F7FJ|L7||FJ|||L7FJ|F7F7FJF----JF7F7|L-7LFJF---JF7||||LJ||LJL7L-7.LLJFFJJ|
7J77LL--J|||F7||||FJLJL--JLLJL------JF---------7LJFJ|LJL--7L7F|FJFJ|LJ|L-JLJL-J|L7||F|||||L7|F7F7FJLJLJF7L7|FJF7F7||LJLJF7|L--7|F-J.F|-L.|FJ
|-FF7JJ|LLJ||LJ||LJF7FF---7-F7F---7F7L-------7FJF7|F--7F--JFJFJ|-L7L---7F------JFJLJFJ||||FJLJLJLJF7F7FJL-J|L-JLJLJL7F7FJ||F7FJ|L7J.FJ-|7FF|
F.F7J7LFJ-LLJF7LJLFJL7L--7L-JLJF-7LJL--------JL-J|LJF-JL7F7L7L7L-7|F---JL7F-7F7FJ7F-JFJ||||F---7F-JLJLJF---JF----7F7||||FJLJLJ-L-J.7J|JL-F-|
|FL|.L7.|J|.FJL--7L-7|F-7L----7|FJF7F--------7F-7|F7|F7J||L-J-L7FJLJF7LF7|L7LJ|L-7L-7|FJ|LJL--7|L7F7F--JFF-7L---7LJ|||LJL7|F7F7F-7-|F--J7|.|
|FFJFJLJJ.FFJF7F7L7FJ||FJF----J||FJ||F-------J|FJLJLJ|L7||F7LF-J|F--JL7|LJFJF-JF-JF-J|L7L7|F7FJL7||LJF7F-J-L----JF7LJ|F-7L-JLJLJFJ-|7JJJFLF7
L|7FJ7FJLLFL-J||L7|L7||L-JF-7F7|LJ-LJL-7.F7F7-||FF7LFJFJ|||L-JF7LJF7F7|L-7|JL-7L-7L-7|L|FJFJ|L-7|LJF7||L------7F7|L7FJL7L---7F--JJ7LL||.77J|
|..FJFJ7--77FFLJFJL-J|L---J|LJLJF------JFJLJL-JL7||FJFJFJ||F7FJL7FJLJ||F7LJF7FJF7|F-J|FJ|FJFJF7|L--J|||F7F7F--J|||FJ|F-JF--7LJLFJF|---|-F77J
.FFLJFL|FF||-FF-JF7F7L----7F--7.L-------JF---7F-J|LJFJ.L-J||||F-JL-7FJLJL7FJLJFJ||L-7|L7|L7L-J|L---7LJLJLJ|L--7|||L-JL7||F-J-F77LJ|FF|LF7||.
-F77.L7LL--.FLL7FJLJL---7FJL-7|F7F7F--7F7L--7|L--JF-JF7F7-LJ||L7F7FJL7F--JL7F7L7|L7LLJFLJJL--7L7FF7L7F7F-7L---J|LJF7F7L-JL--7|L-7JL-FL-J-7L7
|FLF-L7..|.F-7LLJF------JL-7FJ||LJLJF7LJ|F7FJ|F7F7L--JLJL--7LJFJ|LJF-JL---7||L7||FJF7F7F7F7F7L7L-JL7|||L7L----7|F-J|||F-----J|F-J|L7|J-LJJFJ
7|.....F-LL.LJ7F7L----7F7F7||FJL----JL-7||LJ|||LJ|F7F--7F--JF7L7L-7L7F7F7FJS|-||||FJLJLJLJLJL-JF7F7|LJL-JF----J|L-7LJLJF7FF7FJL7F7FF777|||FJ
FJ77FF-7-.|.|-FJL-----J|LJ|LJL---------J|L--7LJF7||LJF7LJF7-||JL7FJF||||||FJL7LJ|||F7F7F---7F7FJLJ||F-7F7L-----JF7L----JL7|||F7LJ|FJ|-7--7JF
LL7JLJ.||L7F-J|F-7F----JF7L------7F--7F7L--7|F-J||L7FJL7J|L-JL77LJ-FJ||||||F7|-F||LJ||||F--J|LJF7F||L7LJ|F7F7F7FJ|F-7F7F7LJ|||L--J|FJ7|L|J.-
|LJ7L-L7||-FLFJ|FJ|F----JL-7F7|F7LJF7LJL-7LLJ|F-JL7LJF7L-JF7F7L7.J-L7|LJLJLJ||F-J|F-J|LJL7F7|F-JL-JL-JF7LJ|||||||LJFLJ||L7FJ||F---J|JL|F|7.|
.F7FF7L---7.FL7|L7|L------7LJL-JL--J|F--7L---JL-7JL7FJ|F7FJ||L-J77|FJL-77|LF|||F-JL--J||.LJLJL7F-7F7F7|L-7LJLJ|L--7F-7||FJL-JLJF-7FJ|LL-J7F7
7JL|J7FLL.LFF.LJFLJF7F7F7|L--------7LJF7L----7F7L7-||JLJ|||LJJJJL-FL7F-J-JF-LJLJLLJFL-F--7F--7LJFJ|LJLJF-JF7F7L--7LJFJ||L7F-7F7L7LJF77F||L-7
|.LL7-J7|777|-L|-FFJLJ||L----------JF7|L----7||L-JFJL--7||7.J7..F-|-LJJFF|-LJFJ77J.F|-L-7|L7FJF7L-JF7F7L--JLJL7F7L--JFJ|FJL7LJL7L--JL7--J7JJ
--|J.|LJ--L7-F--7FJF-7LJF-7F-7F-7F--JLJF7F--JLJ7F7L7F--JLJF7F-L-|-|-J.|-FF7LL|J-LF-7F7|FJL-JL-JL-7FJLJL----7F7LJL---7L7||F7L--7L---7FJFJF|77
.F..-7JFL-J7FL-7LJFJ7L7FJFJ|-LJ-LJ7F---J|||F---7|L7LJJF7F7|L7J7J|7JFL-F7JL-JLLJ|LL7LJL7L--------7|L----7F-7||L7F----JLLJ||L7F-JJF7LLJL|J|LJ|
FF-7F|FL.|--7.FJF-JF--JL7L-JF-----7L--7FLJFJF-7LJFJF7FJLJLJFJFL-|.F|FJL|FJ.F7LJ-|JL7F7L---------J|JF7F7||FJLJFJL-------7|L7|L---JL---7J||-F|
F77|FF-F-7|.L7L-JF7|F-7FJF77L----7|F-7L7F7L7L7|F-JF|||F----JLJ|JL|-LLJ.F||LLLJLL-7J||L----------7L-JLJ|LJ|F7JL---------JL-JL7F7F7F7F7L-7J7J.
LLFJ-F.|.LL-J-F--J|LJ7||FJL----7FJLJJL7LJL-JFJLJF-7|||L---7LF.|7JL|JFF7.77J.|7F77|FLJLF--7F----7L----7L--J|L7F-7LF--7JF7F--7||||||LJ|F-J7L..
.F-7FJ7|FL|L7FL--7|7F-J|L-----7|L----7|F7F--JFF7L7LJLJF---J-7JJ7FFL7J-JL7|LJL7LFF----7L-7|L-7F7L7F--7L----JFJ|FJFJF-JFJ||F-JLJLJ||JLLJ|FF-J7
FL-J7.JFF--7F--7FJ|FJF-JF7FF7FJL-----JLJ|L--7FJ|.L7F--J-F7.||7.F-JJJ-|.FL77.F7.FL---7|F7|L7-LJL7|L-7|F7F---JFJL-JFJF7L7LJL-----7LJ||LLL-JFJF
7FF7F|7LJLLLL-7|L7|L-JF-JL-JLJF7F--7F-7.L---J|FJF7|L---7|L-7|FFLL-|.FF--7L-|---F-7F-J||||FJF-7FJ|F-J|||L----JF7F-JFJL7|F7F7F7F7L-7-7JFLJ.|L|
L-|L|.F7F7JLF-JL-JL7F7L-------JLJF7LJFJF---7FJ|-|||F--7LJF-JF-7LL7LF7LLJJFL|||.L7|L-7LJ||||L7|L7LJF7LJL-----7|||F7L-7|||LJLJLJL7FJ-7-7LF7-FF
J.JL|.LJJ|..L--7F-7LJL7|F7FF7F7F7|L--JFJF7FJ|FJFJ||L-7L-7L7F7JJFFF-|L7-|.FJ|F|FFJL7JL-7LJL7FJL-JF-JL7F-----7||||||F7|LJL------7||JFJ-JL|JL||
F|7-|--L--F7|F7||FL7F7L-JL-JLJLJLJF--7|FJLJFJL7L7||F7L-7L7LJL7JFJ.F-77.L--.FF-7L-7|F-7L--7LJF7F7L7F-J|F----J|||LJLJLJF--7F7F--JLJL-77LF7.L7-
FJ-F|LLJFL||FJLJL7FJ|L---7F7F-7F-7|F-J|L--7|F7L-JLJ||F-JF|F-7|J-L7F.|J-|L|..L7|F-J|L7L---JF7||||FJL--JL----7LJL-7F---JF7LJLJF7F7J7.L|FJ.|.J7
.J|LJL|JL7||L----JL-JF7F-J|LJ-LJJLJL--JF--JLJL7F7F7||L-7FJL7LJ-FJFJF|..|-FF7FJ|L7FJLL-----J||LJLJF7F---77F-JF-7FJ|F7F-JL7F7FJ|||F7JL|7-7LF7|
.FJ-77J.|7|L7F-7F----JLJF7|F-7|F-------JF7F7F7||LJLJL--JL--J7J.|---FLF77-FJ|L7|FJL-7F------JL7F--JLJF-7L7L-7|FJL7||||F-7LJ|L7|||||-F|JLL.LF7
FL-|LF.FF-JFJ|FJL7F-----JLJL7L-JF---7F7.||||||||F7|F7F-----7F7.|.LF7..LF-JFJFJ||F--JL--7F-7F-JL----7|FL7L--J||F7LJ|||L7L7FJFJLJLJL--7-7L-.F|
JJF|-L-FJF7|FJL7FJ|F-------7L7F-JF--J|L7|||||LJLJL-J||F-7F-J|L7-F-J|7FLL-7|LL7LJL7.F7F7LJFJ|F---7F-J|F-JF---JLJ|F7|||FJL|L7|F7F7F-7FJ7LJ|.JJ
L|F|F--L-J|LJF-J|FJL7F7F7F7L7LJF7L---JFJ|||||F7F-7F7LJL7|L7FJFJLL-7|F7F7FJL7JL-7FJFJ||L7FJFJL-7FJL-7|L--JF7F7F7LJLJLJL-7L-J||LJ||FJL77J.FLLF
F|J|LJFJJL|F7L-7LJF7||||LJL7L--JL----7L-JLJLJ||L7|||F--JL-JL7L7F-7|LJLJ||F7|F7FJL7|FJL7|L7|F7FJL7F7LJF---JLJLJ|F7F7F7F7L---JL-7||L-7L-7-L-|J
L--7..L7F-LJL7FJF-J|LJLJF-7L7F-7F---7L7F7F--7||FJ|||L-7F7F7LL7LJFJL-7F-JLJ|LJ|L-7|||F7||LLJ|||F7LJL7FL-------7LJ||||||L----7F7|||JJL--J-J-F7
LLLF-F--.FJLFJL-JF7L77F7L7||LJF||F--J-LJ|L-7|||L7LJL--J|LJ|F-JF-JF7L||F7F7L-7L7-|||||||L-7FJ|LJL7F7L-7F-----7|F7LJ|||L----7LJ||LJJ-|FJ7|LF-7
.LL|LJ-|.7|.L7F7FJL7L-J|FJL----J|L---7F7L--JLJL7|F---7FJF-JL7FJF7||FJ|||||F7L7|FJLJLJLJF7|L7|FF-J||F7LJF---7|||L-7LJL7F7F-JF7LJJF|-L7L|-7|L.
FF7J||7L-7FF|||LJF-JF-7LJF---7F7|F--7||L----7F7LJL7F-JL7L7|FJL7||||L7|||||||FJ|L-7F--7FJLJFJL7L--JLJ|F7|F--J|||F-J-F7LJ||F-JL---7J--7J|LJ7|.
F77-|JLJFFF--JL-7L-7|-L--JF--J||||F7LJ|F----J|L--7|L--7L7L7|F-J|||||||||||||L7L7FJL-7|||F7|F7L----7FJ|LJL7F7LJ||JF7||F7|LJF----7|JJ7|J|LJJL-
-JJF|.|F-FJF---7|F-J|F-7F7|F7FJLJLJL--JL----7L-7FJ|F-7||L7|||F7|||L7|LJ|||||7|FJL7F7|||FJ|LJL---7FJL-JF-7LJL-7|L-JLJLJ|L-7L---7LJ.LF7-F-|.LL
LJ.7.|.LJL-JJF7LJL--JL7LJ|LJLJ|F-----7F--7F-JF7||||L7LJF7|||||||||FJ|F-J|LJL-JL77||LJLJ|FJF-----JL7F77L7L----J|F---7F7L-7L--7FJF77-|L7JF-LJ.
JFLL--7L-L7LF|L7F7F---JF7L-7F-7|F--7FJL-7|L7J|||L7L7L7FJLJ||||LJ|||FJL-7|F7F7F7|FJL7J|FJ|FJF-----7|||F7L------JL--7LJ|F7L--7LJ.||F7|FJ77J|.-
|7.|-7J.L|-FFL7LJLJF---JL-7|L7|LJF-JL---J|FJFJ||FJ7|FJL--7|||L-7|||L7F-JLJLJLJ|||F7L7FJFJL7|F---7||||||F----7F-7F-JF7LJL7F7L7F7|LJLJL7J|FF|J
J.L--LJ-F|FF-7L----JF---7FJL-J|F7L-----7FJL7L7|||F-JL7F7FJ|||F7|||L-J|F-7F7F7FJ|||L-J|FJF7LJL--7LJLJLJ|L---7LJFJL--JL--7||L7LJLJF7F7FJJLF.|.
FL.L-7|-|.LL7|F--7F7L--7||F--7LJ|F7F---J|F7|FJ|||L--7|||L7LJ||LJ||F7FJL7LJ|||L7||L7F7||FJL7F7F-JF----7L----JF7L----7F--J||7L-7F-JLJLJL7|L-LJ
|F|7F7FFF7JFJ||F7LJ|7F-J|LJF7L-7LJLJF7F7LJLJL7LJ|F--J||L7L7FJ|F-J||LJF7|F7LJ|FJLJFJ|||||F-J|LJF-JF--7|F7F---J|F---7|L--7|L7F-JL-77J|L-F7.||.
F--J|.F7||FJFJLJL-7L7L-7|F7|L--JF7F-JLJL--7F-JF-JL7F7||FJ|||FJL7FJL7FJ|LJL-7|L-7FJ7|||LJ|F7L-7L77L-7LJ|||F7F7LJF7FJ|F--JL-J|F7F-JJF7FFJL-|7.
.|L7-FJLJLJFJFF-7-L7L7L||||L-7F7|LJF----7FJL-7|F-7LJ|LJL7FJ||F7|L7FJ|FJF7F7|L--JL-7|||F-J||F7L-JF7FL-7|LJ|LJL--JLJ7LJLF---7||||F7|L.|L-JJJ|J
FL-77L--7F7L--JFJF-JFJFJLJL7FJ|LJF-JF-7FLJF--J||FJF7L7F-JL7|||LJ||L7|||||||L7F-7F7||LJL-7|LJL7F-JL-7FJ|F-JF7.F7F7F7|F7|F--J|||LJL7FFL7J77...
FJLLLJ|-LJ|F7F7L7L-7L7L---7|L-JF7L--JFJF77L--7||L7||FJL-7J|||L-7FJFJ|L7|||L7LJFJ|LJL-7F7||F-7|L7F7FJL-JL-7|L7|LJLJL7|LJL-7JLJ|F-7L77||.--F77
7L-.FL7-|L||LJL7L7FJFJF---JL---J|F---JFJL7F7FJ|L7|||L7F-JFJ||F7||FJ-L7||||FJF7L7|-F7FJ|LJ|L7LJFLJ||F--7F-J|FJ|F7F-7LJF---JF7J|L7L-J.F|-|-L77
L-7LFF-.-FJL--7L7|L7L-JF7F-7F--7||F--7|F-J|LJFJ7|||L-J|F7|FJLJ||||F7FJ||LJL7||FJL7||L7L-7|FJF7F7L||L7FJL--JL-J||L7|F7L7F7L||FL-JFL7|.-7JL-J7
||-J.JJF-L7F--JFJ|JL---J|L7||F-J|LJF7|||F7L-7|F7||L--7LJ|||F7FJ||||||FJL-7FJ|||F7||L7|F-J|L7||||FJ|FJL--7F----JL-JLJL7|||FJ|F7F77-FJFL--F7FF
L77F7LFF7L||F7-L7|F7F---JFJLJL-7L--JLJ||||F7||||||F7L|F-J|||||FJ||||||F7F||-||||LJL7|||F7|FJ||||L7|L-7F-JL----------7|LJLJFJ|LJL--7-F-|L-J-L
FL7-|FJL|7LJ||F-JLJLJF7F7|F----JF7F7F7|||||||||||||L7|L-7|||||L7||||||||FJ|FJ||L7F7||||||||FJ|||FJL7FJL-7F--7F------JL--7FJFJF----J.|7-.||-|
LF7|L7J-|7FL||L--7F7FJLJLJL7F7F7|||||||||||LJ||||LJL|L7FJ|||||FJ|LJ||LJ|L7LJFJ|FLJ||||LJLJ||.|||L7FJ|F--JL-7|L------7F-7|L7L7|LF7-|7LL.77L-F
L|LJJJLFF-7FJL---J|LJF7F7F7LJLJLJ||||LJ||LJLFJ|LJFF-JFJL7|||LJL7L-7||F-JFJF7L7|F--J||L---7||FJ||FJL7||F-7F-JL7F--7F-J|FJL-JFJL-J|..JJF|-7FJJ
LLL7-F-LL7LJF--7F7|F-JLJLJL7F----J||L-7||JF7L7L7F-JF-JF7|||L7F-JF7|LJ|F7L7||FJ||F-7||F-7FJ||L7|||F-J|||FJL--7|L-7LJF7||F7F-JF7F7L77.F||L.J7F
||.|-L-7-|F7|F-J|||L7F----7|L----7|L--J||FJ|FJFJ|F7L7FJLJ|L-J|F7||L7FJ|L7LJ|L7|||FJ||L7|L7||FJ|LJL7FJ||L7F--JL--J.FJLJLJLJF-J||L7L777-7.|F||
FJ7.L|FJFLJLJL-7|LJLLJF77FJL-7F--JL--7FLJL7LJFJL|||FJL7F7L-7FJ|LJ|FJL7|FJF7L7LJ|||FJ|FJL-JLJL7L-7FJL7|L7|L-----7F-JF--7F-7L-7LJ7|FJJL-J---LJ
||.FF-L.F7|-F--J|F--7FJL-JF-7|L---7F7L-7F-JF-J7FJ||L-7|||F7|L7L-7|L-7||L7||FJF-J||L7|L----7F7|F-JL7FJL-JL--7F-7LJF-JF7LJFJF7L7JLLJF7-|LF|.L|
7|F--J7-|LJ.L7F7|L-7|L7F-7|FJL----J||F-J|F7L--7L7|L7FJ|||||L7L7FJ|F7|||7||||FJF7||FJL7F--7||LJ|F--JL------7||FJF7L--JL-7|FJ|FJ-|LL7JL|F-L.L-
L7|J|-JFFJ|F-J|LJF-JL-JL7||L7F-7F7FJ|L-7LJL7F7L7|L7||FJ|||L-JFJL7||||||FJ|LJL7||||L-7|L-7LJL-7||F7F7F-7F-7|LJL7||F-7F--J|L7||F|J.L-JF|7|J|7L
.|-7-J|F|FFL--JF7|F7F-7FJ|L7||FJ|||FJF-JF--J|L7|L7|||L7||L--7L7FJ||||LJL7|F--J||||F7||F-JF---J|LJLJ|L7|L7LJF7FJ||L7LJF-7L7|LJ7|FF-JLF-7-FJF|
|LF-JFFJ|F-----J|LJLJFLJFJFJLJL7|LJL7L-7L-7FJFJ|J|||L7|||F7FJL|L7LJLJ-F7LJL--7|||LJLJ|L-7L---7|F---JFJ|FJF-J||FJL7L--JFJLLJ..FF-|-L7L|J||7|7
L-LL-|7--|F---7FJF7F--77L7|LF--JL7F7|F-J.FJL7L7L7||L7||||||L-7L-JFF---JL-----J||L---7|F7|F---J||F7F7|LLJ.|F-JLJJLL7F--J7LL|7FFJL|JL-7|.F|-J|
F---||.|-||F--JL-JLJF7L--JL7L-7F7LJ|LJF--JF7|FJFJ||FJ|||||L7FJFF--JF7F7F-7F-7FJL----J||LJ|F7F7|||||||F--7|L----7F-J|F7F7.F77FJLF.L7F7|7|7J|L
J-|FF|-77LJ|F-7F-7F-JL7F7F-JF7||L7FJF-JF7FJ||L7|-LJL7||||L7|||FJF7FJLJ||FJ|FJL------7LJF-J|||LJ||LJ|LJF-J|F--7FJ|F7LJ||L-J|-77FL---J||7LJ.|7
.F77|.FL||LLJFJ|FJ|F--J|||F-JLJL7||7|F7||L7||FJL--7.LJ||L7||L7L-J||-F7LJL7|L7F7F7F-7L-7L7FJLJF-JL7FJF7L-7|L7FJL7|||F7LJF7FJ7|L-..FL-|LJ|FF|7
FJJF--F-L|FLFJFJL-JL-7FJLJL7F--7|||FJ|||L7|||L7F--JF77||FJ|L7L--7|L-J|F--JL7|||||L7|F-JFJL-7L|F7FJL7|L-7LJFJL7FJ||||L7FJ||L-JJ.L-J|FL-|-L-.|
F-F-J||-F-7.L7|F----7LJ.F--JL-7||||L7||L7LJ||FJL---JL7||L7L7|F-7|L-7FJL---7||||||FJ|L-7L7F7L7LJ|L-7||F-JF7L7FJ|-||LJFJ|L||F|JF-.F-|J.||7JL|J
--JLLJ7F|7F7FJ|L-7F7L---JF7F7FJ||||FJ||FJF-J|L7F-7F-7|LJL|FJ|L7|L-7LJF7F--J|||||||L|F-JL|||FJF-JF7||||F-JL-JL-J7LJ.FJFJ7LJ-L.JJFF-7..-JJJ7|.
.J|LJ..-77.FL7|JFJ|L7F7F-JLJ|L7LJ||L7|||J|F7|FJL7|L7LJF--JL7L-J|F7|F-JLJF-7|||LJ|L7|L--7|||L7L7FJ|||||L---7JF---7.FL-J-7J.F|-LF7J|J-|.L-LL-7
L7-7.F7J|.FJLLJ|L-JFJ|||JF7FJFJF-JL7LJ|L7||||L7FJ|FJF7L---7|F7LLJ||L7F--J7|||L77|FJ|F7FJ|||FJFJL7||LJ|F7F7L7|F--J-LJFJ7|-LJ|.|.L-|7.L-J7F|LJ
FJJFF7J-.7JFF|.J.J-L7|||FJLJFJJL-7FJF-JFJLJLJF|L7|L7|L7LF-JLJL--7LJL||-F--J|L7L7|L7||LJF||LJFL7FJ||F-J|||L7LJL--7.LJL7FJ7JFFJ.F7J|F-7F.LJ-J.
LJF-JL7F-F7-JJ.L|J7.||||L--7L-7F-JL7L-7L-7F---JFJ|FJL7L-JF7F-7F-JF--JL7|F7FJ.|FJ|FJ|L--7LJF---J|FJ||F7||L7L7F7F7|7--J||FL7-F7.|7-F-.FF7FL.F7
|-|-7.JJ|F|F|LL..LF-LJLJJF-JF7|L7F7L-7|F7|L7F7FJFJL-7L7F7||L7|L-7|F-7FJLJ|L7FJL7LJLL7F7L-7L7F-7|L7||||||FJF||||LJ--J7.J-L7..|7LJFLJ.LLJ|7F7|
|FLJL7|-|JLFJ.L77-LF-----JF7|||FJ||F7|||LJFJ||L7L7F7|.|||||FJL--J||FJL--7|FJL7FJF-7FJ||F-J.|L7||FJ|||LJ||F7LJ|L-7LJF7-.F|JL7JF-|7.|FF77|FJ--
||-7F---||LL|..-JF-L--7F-7||||||FJLJ||||F7L7|L7|F|||L7||LJ|L----7LJL7F7FJLJF-JL-JFJL7|||7F-JFJ||L7||L77|LJL-7L-7L7-J-77|L7---|LL-7F-7J7|L7-J
-J7.L7LFJFJ.|..|-L7LLL|L7LJ||LJ|L-77||LJ||FJL7|L7|||FJLJF-JF7F--J-F7||LJJJFJF7F7FJ7L||||FJF7|FJ|.|||FJFJF-7FJJF|FJ|FLF77J|FL7.77.L|7|.-JF|L|
J.77-L-J-|..L.F.-J7FLL|FJ.F||F-JF7L7LJJ.|LJF7||FJLJLJJJFL-7||L--7FJLJ|J7F-L7||||L-7JLJLJL7|LJL7L7|||L7L7|JLJJ-FLJ7L7L7LF7FJ|L7L---LJ-LJFL-FJ
LLJF-L-|7..7LFJ...-7JJLJJFF||L-7||FJ|.LFL-7|||||J|7|JFFJJL||L7F7|L7F7L7F7J|||||L-7L7JJ|J.LJ||JL7||||FJ-||JJJL-||JJ||.F7LJ-L--J.|.F7L-L-J-||.
|L-JFJ7LF77|FJLFF7F7FF-JJ7|LJLFJ|||L|7FF--J|LJ||L-7J|-|JFFJL7||LJFJ|L7LJL7FJ||L7FL-J.L7-|7J||FL||||||7FLJ7.|.|LJL-7-FJ||FFJ-F777FLF.FJ7JL-J7
F-J.F-FJLJ-J7--J..|L---J7LJLL7L7|LJL||LL--7L-7LJ77L-|LF.FL7FJLJ-FJFJJ|F--JL7|L7|7J||7FF7|-..FL-LJLJ||J|LLJF-77FF7-|7||LL|L7--JL77-F7F.F--7LF
J.J-7.J-FJ-L7J.---J7.LLJ|-L7FJ7LJJ.LF7F|F-JF-J7FF7..JFJ7|LLJ7|7LL7|JFJL---7LJ.LJ..F|J7JF7LLJ.LJFJ7.LJJ77J.7.|-7JFF.7||FJJLLF7FJJF.LJL-|.LJJ|
|-|--F.||7.FJ-|JJLFJL7|FL7.-7FLJL7--JLF-L7FJJ-L7.LL7.|.LL-|7LL7-LLJ-L-7F--JFJ7|7L7JJ|.F-JL|F7JFJ-|-|JJ|-7FF-F77JFJ-FFF--7LF7-7.7L-..|L|JF|JL
--7-||-7LJ--.-F-7-L7JF77.F-.-|.|||FJ7.-J7LJ.|LL|7||LJLF7L-7-JFF7F7LJ.L||JFJ-.7J7-||F77J7.L|L7.7L-LF7.7JLJ7L|||J|.|-F-LJ7J7||L7FJF|-F7FLJFF7|
J-.F7J-J|L-|-FJ-F--7LLJ-J-.F7|F--JJFJF|L-L7F7.|.L-FJ|LL-7F|LF7.-JLL.7.||.|J|F--||LL7|J-F7.|-|7L7.||||J-|.-.|J||--F.--L||F7.J-J-J|LFLFF7.|.F|
|-LFJJJLLJLJ.FJF--7J-.LJL-JLLL-L-F-7-|J.|LJJ.LFJJ-LLL.LLLJ|JLJ|-LL-FJLLJ-J7--LJLL-LJ.|LL-FJJLLLJ.L|JJLF|-J-JLJ-FJ.FJ.L|LLJL..LJFJL-FJJLJ--FJ
AOC

# input = input.split("\n")

require "delegate"

# A simple delegator wrapping a single object, providing it with reference-like
# semantics and auto-generated destructive methods. For any method defined for
# the wrapped value, a corresponding method suffixed with "!" that overwrites
# the value in the box with the value returned by the non-suffixed method is
# provided so long as no such method is already defined.
class Box < SimpleDelegator
  def respond_to_missing?(...) = true

  def method_missing(symbol, ...)
    name = symbol.to_s
    if !name.end_with?("!") ||
        method(:respond_to_missing?).super_method&.call(symbol, ...)
      super(symbol, ...)
    else
      new_value = super(name[...-1].to_sym, ...)
      set!(new_value) unless equal?(new_value)
    end
  end

  # Overwrite the value contained within this box with the specified value,
  # which may be of any class or nil. A box may not be overwritten with itself.
  alias_method :set!, :__setobj__

  # Extract the value contained within this box.
  alias_method :unbox, :__getobj__

  # Methods intercepting common in-place operations that need to be more
  # performant than is achievable by dispatching calls to them through
  # method_missing.
  # standard:disable Layout/EmptyLineBetweenDefs
  def max!(value) = set!(__getobj__.max(value))
  def min!(value) = set!(__getobj__.min(value))
  # standard:enable Layout/EmptyLineBetweenDefs
end

class Object
  # Wrap this object in a Box, granting it reference-like semantics.
  def box = Box.new(self)
end


require "matrix"
# require_relative "util"

module Day10
  DAY = 10
  TITLE = "Pipe Maze"

  NORTH = [-1, 0]
  EAST = [0, 1]
  SOUTH = [1, 0]
  WEST = [0, -1]
  PIPE_CONNECTIONS = {
    "|" => [NORTH, SOUTH],
    "-" => [EAST, WEST],
    "L" => [NORTH, EAST],
    "J" => [NORTH, WEST],
    "7" => [SOUTH, WEST],
    "F" => [SOUTH, EAST],
    "." => [],
    "S" => [NORTH, EAST, SOUTH, WEST]
  }
  private_constant :NORTH, :EAST, :SOUTH, :WEST, :PIPE_CONNECTIONS

  module_function

  def parse(input) = input.lines(chomp: true).map(&:chars)

  # Construct a bidirectioal graph from the specified grid. Only segments of
  # pipe that are connected on both of their outputs are included.
  private def build_graph(grid)
    # Pipes are comprised of bidirectional links between tiles. Unidirectional
    # links must be ignored.
    connections = Set[]
    start_coord = [0, 0].box
    grid.each_with_index do |line, row|
      line.each_with_index do |tile, col|
        start_coord.set! [row, col] if tile == "S"
        connections.merge(PIPE_CONNECTIONS[tile].map { |dr, dc|
          [[row, col], [row + dr, col + dc]]
        })
      end
    end
    connections.filter! { |from, to| connections.include?([to, from]) }

    # We shall represent the pipe graph using a hash with vertices as keys and
    # the edges outgoing from each vertex as its values.
    graph = connections.group_by(&:first).transform_values { _1.map(&:last) }
    [start_coord.unbox, graph]
  end

  # Determine the shortest distance from the starting tile of each node tile in
  # the specified graph.
  private def loop_distances(start_coord, graph)
    # Simple breadth-first search to determine the distance from the start tile
    # to each tile in the main loop of pipes. Note that since Ruby's Arrays are
    # internally implemented using a circular buffer, all deque operations can
    # be performed upon them in constant time.
    distances = {start_coord => 0}
    nodes_to_visit = [start_coord]
    until nodes_to_visit.empty?
      curr_node = nodes_to_visit.shift
      graph[curr_node].each do |neighbour|
        next if distances.include?(neighbour)
        distances[neighbour] = distances[curr_node] + 1
        nodes_to_visit << neighbour
      end
    end
    distances
  end

  # Determine the maximum distance of any point in the specified pipe map from
  # the starting tile.
  def part_one(input) = loop_distances(*build_graph(input)).values.max

  # Count the number of points that are fully enclosed by the main loop of the
  # specified pipe map. Gaps in pipes that span less than one unit are still
  # considered to be gaps.
  def part_two(input)
    # Construct a matrix denoting whether the tile at each coördinate is inside
    # the main loop. Pipes with vertical components that do not comprise the
    # bottom of a segment of the graph are represented using the symbol :pipe.
    # Here we assume that the starting tile contains one such pipe: this is not
    # generally true, but works for all given inputs.
    rows, cols = input.length, input[0].length
    loop = loop_distances(*build_graph(input))
    surface = Matrix.build(rows, cols) {
      next true unless loop.include?([_1, _2])
      "|F7S".include?(input[_1][_2]) && :pipe
    }

    # We can determine whether a point is inside a rectilinear polygon by
    # counting the number of vertical segments (here, :pipe) encountered when
    # traversing the rows of the coördinate plane into which the polygon is
    # projected. If the number of crossings is odd, then a point is inside the
    # polygon; if it is even, then the point is outside the polygon.
    surface.row_vectors.each_with_index do |contents, row|
      inside_loop = false
      contents.each_with_index do |tile, col|
        if tile == :pipe
          inside_loop = !inside_loop
        else
          surface[row, col] = surface[row, col] && inside_loop
        end
      end
    end
    surface.row_vectors.map { _1.count(true) }.sum
  end
end

puts Day10.part_two(Day10.parse(input))
