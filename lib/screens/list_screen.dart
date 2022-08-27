import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
        backgroundColor: Color.fromARGB(255, 184, 106, 218),
      ),
      body: ListView(
        children: <Widget>[
          BookTile(
            //ListView의 한 줄을 나타냄
            title: '패키지 없이 R로 구현하는 심층 강화학습', //ListTile 가운데에 나타낼 위젯
            subtitle: '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지!',
            description:
                '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데, 딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여 강화학습 작동원리를 이해한다.',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCuoqW%2Fbtq8uatukHu%2FO0VapTwcTTpV3T29lqMYd0%2Fimg.png',
            //leading: ListTile 맨 앞에 나타날 위젯
          ),
          BookTile(
            //ListView의 한 줄을 나타냄
            title: '이렇게 시작하라 아마존 FBA', //ListTile 가운데에 나타낼 위젯
            subtitle: '회사 월급보다 많은 수익을 얻게 해준 아마존 FBA 셀링 포인트 공개!',
            description:
                '사람들은 왜 스마트스토어 셀러, 유튜버 등 온라인 기반 사업에 열광할까요? 비교적 자유롭게 시간을 활용할 수 있고 웬만한 직장인보다 더 큰 수입을 기대할 수 있기 때문일 것입니다. 잠재 고객 수 3억 명 이상의 세계 1위 쇼핑몰인 아마존은 그중에서도 가장 잠재력이 큰 창업 플랫폼입니다.',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbdHbf4%2FbtrlxbohctG%2FBx32YBCrK5VUIPVNFAg6B1%2Fimg.png',
            //leading: ListTile 맨 앞에 나타날 위젯
          ),
          BookTile(
            //ListView의 한 줄을 나타냄
            title: '당신을 야근에서 구해줄 무기 데이터 리터러시', //ListTile 가운데에 나타낼 위젯
            subtitle:
                '업무 자동화? 칼퇴? 데이터 분석을 적용한 업무 시스템? 이것들을 위해 어려운 코딩 공부를 시작하는 건, 배보다 배꼽이 큰 게 아닐까?',
            description:
                '직장에서 편하게 일 하고, 인정받고자 업무 자동화/데이터 분석을 꿈꾸지만, 막상 코딩을 배우는 일이 더 어렵지 않으신가요? 편하려고 배운 데이터 분석 공부가 내 인생을 더 복잡하게 만들지는 않나요? 이젠 코딩 말고, 엑셀로! 제대로 데이터 분석해 봅시다!',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FDklv0%2FbtrFVvGa71K%2FrK0r7iARgeKd7I7KuOOKC1%2Fimg.png',
            //leading: ListTile 맨 앞에 나타날 위젯
          ),
          BookTile(
            //ListView의 한 줄을 나타냄
            title: '파이썬 해킹 레시피', //ListTile 가운데에 나타낼 위젯
            subtitle: '이 책에서만 볼 수 있는 파이썬 요리 비법 대공개! 해킹 도구를 파이썬으로 직접 만들며 공부해보자',
            description:
                '이 책은 저자가 다년간의 정보 보안 강의, 컨설팅, 개발 경험을 토대로 작성한 해킹 요리 비법서다. 파이썬 3.9, Asyncio, BeautifulSoup, 비동기 문법 등 최신 파이썬 트렌드를 반영한 코드는 싱싱한 요리 재료이며 기본에 충실히 풀어나가는 이론은 레시피와 같다.',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FrTh6k%2Fbtq517fdjqN%2FumbKQy7r9eGVnK4fkC8orK%2Fimg.png',
            //leading: ListTile 맨 앞에 나타날 위젯
          ),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                  title: title,
                  subtitle: subtitle,
                  description: description,
                  image: image,
                )));
      }, //눌렀을 때의 이벤트를 선언하는 곳
    );
  }
}
