#!/usr/bin/env bash
cd "$(dirname "$(readlink -f "$0" || realpath "$0")")"
pwd

cat > ./index.html <<EOF
<!DOCTYPE HTML>
<html>
<head>
    $(cat head.html.part)

    <title>Human in the Loop: Deep Learning without Wasteful Labelling</title>

<!--    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-45108170-4"></script>-->
<!--    <script>-->
<!--        window.dataLayer = window.dataLayer || [];-->

<!--        function gtag() {-->
<!--            dataLayer.push(arguments);-->
<!--        }-->

<!--        gtag('js', new Date());-->

<!--        gtag('config', 'UA-45108170-4');-->
<!--    </script>-->
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
</head>
<body>
$(cat body-header.html.part)

<!-- Two -->
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque fugit maiores numquam, quis sequi tempora voluptas.
Autem eos esse eum fuga mollitia neque nostrum, qui sit tempora voluptatem? Aliquam, eligendi.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et magna sollicitudin, facilisis arcu ac, iaculis nunc.
Aenean et arcu lacus. In hac habitasse platea dictumst. Curabitur eu molestie libero, in varius nunc. Nullam sit amet
velit nec purus gravida ultricies. Suspendisse nec consectetur mauris, vitae scelerisque tellus. Maecenas venenatis eros
ex. Ut dictum interdum dolor, et tempus sapien ultricies in. Etiam finibus, lacus rutrum imperdiet dictum, nulla odio
fringilla felis, non luctus lorem neque at sapien. Vestibulum id condimentum neque, quis porta ligula. Morbi venenatis
euismod blandit. Aenean rhoncus ipsum quis neque pretium, at porttitor ex congue. Sed finibus sed libero ut sagittis.
Sed laoreet tincidunt risus, nec bibendum mauris consectetur id.

Vivamus tristique nulla scelerisque placerat ultricies. Etiam dictum dictum rhoncus. Maecenas eu est sed purus gravida
sagittis ut eget erat. Nulla risus purus, feugiat sed elit in, vehicula egestas mi. Donec turpis ex, lobortis ac erat
eget, pellentesque pharetra nisl. Mauris scelerisque arcu sit amet lectus tempus, eu finibus magna dictum. Quisque ut
felis nisl. Cras in hendrerit magna, ut euismod nisl. Suspendisse blandit viverra orci, porttitor rutrum ante blandit
nec. Sed quis quam neque. Nam ullamcorper, dui et posuere accumsan, odio est faucibus orci, et sodales nisl lacus nec
lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consequat
ultrices suscipit. Nulla vel mollis nibh, venenatis mollis tortor.

Vivamus lobortis mi vel sem ornare, vel ornare felis dapibus. Orci varius natoque penatibus et magnis dis parturient
montes, nascetur ridiculus mus. Mauris ut bibendum arcu. Curabitur eget ante aliquam est lobortis faucibus. Ut quis
lectus a ante mollis tincidunt sed sed felis. Etiam rhoncus odio eu venenatis euismod. Ut venenatis lacus non nulla
commodo, a auctor neque bibendum. Donec luctus urna velit, vel ultricies justo rhoncus at. In hac habitasse platea
dictumst. Suspendisse ullamcorper dolor risus, ac pellentesque sem iaculis at. Aliquam sit amet posuere velit, quis
condimentum sapien. Quisque lobortis tincidunt placerat. Maecenas a elementum ligula. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam quis nunc at lectus faucibus pulvinar.

Integer nec interdum tortor. In erat sapien, auctor ut velit et, malesuada rhoncus sapien. Duis vel porttitor libero,
nec sollicitudin eros. Nam malesuada nulla metus. In rhoncus quis lectus et venenatis. Suspendisse finibus odio sit amet
nisl maximus mollis. Proin varius feugiat ipsum, id placerat mauris. Phasellus a leo tristique, vehicula ex eu,
tristique velit. Suspendisse non consectetur leo. Nam non aliquet ante. Sed in metus pharetra, ullamcorper purus et,
sagittis nibh. Curabitur id ultrices libero. Vivamus egestas velit eu eleifend accumsan.

Praesent aliquet nunc at mi egestas auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
cubilia Curae; Quisque sagittis erat erat, eu vehicula mi tincidunt vitae. Sed faucibus, dolor non hendrerit elementum,
nunc sapien rhoncus leo, vitae dapibus dui enim nec nisi. Sed a dui odio. Etiam feugiat aliquam nunc, ac luctus lorem
mollis non. Aliquam erat volutpat. Pellentesque a nisi nisi. Vestibulum a massa sollicitudin, rhoncus turpis eget,
suscipit risus.

$(cat body-footer.html.part)
</body>
</html>
EOF
