.class public Lcom/iot/engine/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;
.implements LSession/IUserAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;,
        Lcom/iot/engine/MainActivity$checkUserDetails;,
        Lcom/iot/engine/MainActivity$AsyncRoomListTask;,
        Lcom/iot/engine/MainActivity$AsyncMqttConnection;,
        Lcom/iot/engine/MainActivity$AsyncCheckHubNew;,
        Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;,
        Lcom/iot/engine/MainActivity$AsyncLoginTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final TIME_INTERVAL:I = 0x7d0

.field public static thisMainInstance:Lcom/iot/engine/MainActivity;


# instance fields
.field private ShowMenuFlag:Z

.field private acc_nav_arrow:Landroid/widget/ImageView;

.field acc_type:Landroid/widget/TextView;

.field private adapter:LAdapter/UserAdapter;

.field broker:Ljava/lang/String;

.field clientId:Ljava/lang/String;

.field connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private db:LDatabase/DatabaseHandler;

.field dialogDeviceID:Landroid/app/Dialog;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private llAccountAdd:Landroid/widget/LinearLayout;

.field private llAccountChange:Landroid/widget/LinearLayout;

.field private llAddAccountLayout:Landroid/widget/LinearLayout;

.field private llCamera:Landroid/widget/LinearLayout;

.field private llFAQ:Landroid/widget/LinearLayout;

.field private llMenuList:Landroid/widget/LinearLayout;

.field private llRateUs:Landroid/widget/LinearLayout;

.field private llRemote:Landroid/widget/LinearLayout;

.field private llViewRemote:Landroid/widget/LinearLayout;

.field private mBackPressed:J

.field private messageType:Ljava/lang/String;

.field mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field nav_header:Landroid/widget/LinearLayout;

.field private pDialog:Landroid/app/ProgressDialog;

.field persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

.field private recyler_acc:Landroid/support/v7/widget/RecyclerView;

.field sessionManager:LSession/SessionManager;

.field spotDialog:Ldmax/dialog/SpotsDialog;

.field subTopic:Ljava/lang/String;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field private tvAddAccountPlus:Landroid/widget/TextView;

.field private txtAbout:Landroid/widget/TextView;

.field private txtCallUs:Landroid/widget/TextView;

.field private txtFirst:Landroid/widget/TextView;

.field private txtHelp:Landroid/widget/TextView;

.field private txtLogout:Landroid/widget/TextView;

.field private txtSchedule:Landroid/widget/TextView;

.field private txtSecond:Landroid/widget/TextView;

.field private txtSettings:Landroid/widget/TextView;

.field private txtShareControl:Landroid/widget/TextView;

.field private userType:Ljava/lang/String;

.field username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->userType:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->broker:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->clientId:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/MainActivity;->messageType:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iot/engine/MainActivity;->ShowMenuFlag:Z

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->showMenuList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/iot/engine/MainActivity;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity;->createListForRoom(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setUserImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setTowerFlag()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/iot/engine/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iot/engine/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iot/engine/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/iot/engine/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iot/engine/MainActivity;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method private alertDialogForDeleteAccount(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1255
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1257
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 1259
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1260
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1261
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1262
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1263
    .local v4, "txtDelete":Landroid/widget/TextView;
    const-string v5, "Delete Account "

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const v5, 0x7f0b001c

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1265
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    new-instance v5, Lcom/iot/engine/MainActivity$6;

    invoke-direct {v5, p0, p1, v0}, Lcom/iot/engine/MainActivity$6;-><init>(Lcom/iot/engine/MainActivity;Ljava/util/HashMap;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    new-instance v5, Lcom/iot/engine/MainActivity$7;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/MainActivity$7;-><init>(Lcom/iot/engine/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1283
    return-void
.end method

.method private createHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 6
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1192
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "SwitchID"

    const-string v3, "switchid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v2, "SwitchName"

    const-string v3, "switchname"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v2, "SwitchStatus"

    const-string v3, "switchstatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v2, "scheduleDateTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "mString":[Ljava/lang/String;
    const-string v2, "Schedule_dates"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string v2, "Time"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v2, "IP"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v2, "RoomName"

    const-string v3, "RoomName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v2, "schedule_id"

    const-string v3, "schedulerid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v2, "DimmerValue"

    const-string v3, "dimmervalue"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string v2, "DimmerStatus"

    const-string v3, "dimmerstatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string v2, "Repeate"

    const-string v3, "repeatWeek"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v1    # "mString":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1204
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createListForRoom(Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "resultArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1497
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v6, "roomDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 1499
    .local v0, "db":LDatabase/DatabaseHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1500
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1501
    .local v7, "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1503
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1505
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1507
    const-string v8, "RoomId"

    const-string v9, "id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const-string v8, "RoomName"

    const-string v9, "roomName"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string v8, "RoomTypeId"

    const-string v9, "roomType"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string v8, "RoomImageType"

    const-string v9, "roomImageId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string v8, "position"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string v8, "hideStatus"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1514
    const-string v8, "hide"

    const-string v9, "hideStatus"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    :goto_1
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-virtual {v0, v7}, LDatabase/DatabaseHandler;->insertRoomNew(Ljava/util/HashMap;)V

    :goto_2
    move-object v3, v4

    .line 1499
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1516
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "hide"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1533
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1534
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1525
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    const-string v8, "objSwitch"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v5, "object":Lorg/json/JSONObject;
    const-string v8, "lockCode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1528
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v9, "lockCode"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LSession/SessionManager;->saveLockCode(Ljava/lang/String;)V

    .line 1530
    :cond_2
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LSession/SessionManager;->saveLockSwitchId(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1538
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v7    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 1533
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method private deleteAll()V
    .locals 1

    .prologue
    .line 800
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 801
    .local v0, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteRoomData()V

    .line 802
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteSwitchData()V

    .line 803
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteNotificationData()V

    .line 804
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteRecentData()V

    .line 805
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteROOM_TYPE()V

    .line 806
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteSWITCH_TYPE()V

    .line 807
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteModeType()V

    .line 808
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteScheduleList()V

    .line 809
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteProfileScheduleList()V

    .line 810
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteTVRemoteInfo()V

    .line 811
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteMusicRemoteInfo()V

    .line 812
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteACRemoteInfo()V

    .line 813
    return-void
.end method

.method private getRoomAndSwitchList(Ljava/lang/String;)V
    .locals 14
    .param p1, "switchAndRoomList"    # Ljava/lang/String;

    .prologue
    .line 1130
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v6, "jswitchAndRoomList":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 1132
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1133
    .local v4, "jRoomObj":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1134
    .local v7, "mMapRoom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "roomId"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1135
    .local v9, "mRoomID":Ljava/lang/String;
    const-string v11, "roomName"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1136
    .local v10, "mRoomName":Ljava/lang/String;
    const-string v11, "RoomId"

    invoke-virtual {v7, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string v11, "RoomImageType"

    const-string v12, "roomImageId"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v11, "RoomTypeId"

    const-string v12, "1"

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v11, "RoomName"

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string v11, "position"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    const-string v11, "roomHideStatus"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1149
    const-string v11, "hide"

    const-string v12, "roomHideStatus"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :goto_1
    iget-object v11, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v11, v7}, LDatabase/DatabaseHandler;->insertRoomNew(Ljava/util/HashMap;)V

    .line 1156
    new-instance v3, Lorg/json/JSONArray;

    const-string v11, "switchList"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v3, "jArrSwitchList":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 1158
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1159
    .local v5, "jSwitchObj":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1160
    .local v8, "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "SwitchID"

    const-string v12, "id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string v11, "switch_image_id"

    const-string v12, "switchImageId"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string v11, "hide"

    const-string v12, "hideStatus"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string v11, "SwitchTypeid"

    const-string v12, "switchType"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string v11, "lock"

    const-string v12, "lockStatus"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v11, "SwitchName"

    const-string v12, "switchName"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v11, "SwitchStatus"

    const-string v12, "switchStatus"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v11, "DimmerStatus"

    const-string v12, "dimmerStatus"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string v11, "DimmerValue"

    const-string v12, "dimmerValue"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v11, "RoomId"

    invoke-virtual {v8, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v11, "RoomName"

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string v11, "dimmerStatus"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1173
    iget-object v11, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v11, v9}, LSession/SessionManager;->setMainLockRoom(Ljava/lang/String;)V

    .line 1157
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1151
    .end local v2    # "j":I
    .end local v3    # "jArrSwitchList":Lorg/json/JSONArray;
    .end local v5    # "jSwitchObj":Lorg/json/JSONObject;
    .end local v8    # "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v11, "hide"

    const-string v12, "0"

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1180
    .end local v1    # "i":I
    .end local v4    # "jRoomObj":Lorg/json/JSONObject;
    .end local v6    # "jswitchAndRoomList":Lorg/json/JSONArray;
    .end local v7    # "mMapRoom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "mRoomID":Ljava/lang/String;
    .end local v10    # "mRoomName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 1177
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "jArrSwitchList":Lorg/json/JSONArray;
    .restart local v4    # "jRoomObj":Lorg/json/JSONObject;
    .restart local v5    # "jSwitchObj":Lorg/json/JSONObject;
    .restart local v6    # "jswitchAndRoomList":Lorg/json/JSONArray;
    .restart local v7    # "mMapRoom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "mRoomID":Ljava/lang/String;
    .restart local v10    # "mRoomName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v11, v8}, LDatabase/DatabaseHandler;->insertSwitchNew(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1131
    .end local v5    # "jSwitchObj":Lorg/json/JSONObject;
    .end local v8    # "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private getScheduleListFromMqttCallBack(Ljava/lang/String;)V
    .locals 12
    .param p1, "scheduleList"    # Ljava/lang/String;

    .prologue
    .line 1091
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v2, "jObArr":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "mNo":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 1093
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1094
    .local v4, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1095
    .local v3, "jObjSch":Lorg/json/JSONObject;
    const-string v8, "profileId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1096
    const-string v8, "SwitchID"

    const-string v9, "switchId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v9, "switchId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1098
    .local v5, "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "scheduleDateTime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "dateTime":[Ljava/lang/String;
    const-string v8, "SwitchName"

    const-string v9, "SwitchName"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v8, "Schedule_dates"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v8, "SwitchStatus"

    const-string v9, "switchStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v8, "Time"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string v8, "RoomName"

    const-string v9, "RoomName"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v8, "schedule_id"

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v8, "DimmerValue"

    const-string v9, "dimmerValue"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string v8, "DimmerStatus"

    const-string v9, "dimmerStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string v8, "Repeate"

    const-string v9, "repeatWeek"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8, v4}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 1092
    .end local v0    # "dateTime":[Ljava/lang/String;
    .end local v5    # "mMapSwitch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1111
    :cond_0
    const-string v8, "profile_id"

    const-string v9, "profileId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v8, "profile_schedule_id"

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v8, "Repeate"

    const-string v9, "repeatWeek"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string v8, "SwitchStatus"

    const-string v9, "switchStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v9, "profileId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LDatabase/DatabaseHandler;->getModeInfoByID(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 1116
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "profile_name"

    const-string v9, "Mode_Name"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v8, "Schedule_dates"

    const-string v9, "scheduleDateTime"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v8, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8, v4}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1123
    .end local v2    # "jObArr":Lorg/json/JSONArray;
    .end local v3    # "jObjSch":Lorg/json/JSONObject;
    .end local v4    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "mNo":I
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private initialiseControls()V
    .locals 8

    .prologue
    const v7, 0x7f0d01dd

    const/16 v6, 0x8

    .line 242
    new-instance v4, LSession/SessionManager;

    invoke-direct {v4, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    .line 243
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LSession/SessionManager;->setBlastFlag(Z)V

    .line 244
    new-instance v4, LDatabase/DatabaseHandler;

    invoke-direct {v4, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    .line 246
    const v4, 0x7f0d00a9

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 247
    const v4, 0x7f0d01e3

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtSettings:Landroid/widget/TextView;

    .line 249
    const v4, 0x7f0d01da

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtShareControl:Landroid/widget/TextView;

    .line 253
    const v4, 0x7f0d01db

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtCallUs:Landroid/widget/TextView;

    .line 254
    const v4, 0x7f0d01dc

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtHelp:Landroid/widget/TextView;

    .line 255
    const v4, 0x7f0d01e0

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtAbout:Landroid/widget/TextView;

    .line 256
    const v4, 0x7f0d01e4

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtLogout:Landroid/widget/TextView;

    .line 257
    const v4, 0x7f0d01d9

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->txtSchedule:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f0d01cd

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->nav_header:Landroid/widget/LinearLayout;

    .line 260
    const v4, 0x7f0d01e1

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llRateUs:Landroid/widget/LinearLayout;

    .line 261
    const v4, 0x7f0d01d0

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llAccountChange:Landroid/widget/LinearLayout;

    .line 262
    const v4, 0x7f0d01d3

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llMenuList:Landroid/widget/LinearLayout;

    .line 263
    invoke-virtual {p0, v7}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llFAQ:Landroid/widget/LinearLayout;

    .line 264
    const v4, 0x7f0d01d7

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llRemote:Landroid/widget/LinearLayout;

    .line 265
    const v4, 0x7f0d01d6

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llViewRemote:Landroid/widget/LinearLayout;

    .line 266
    const v4, 0x7f0d01d4

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->llCamera:Landroid/widget/LinearLayout;

    .line 269
    const v4, 0x7f0d01ce

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 270
    const v4, 0x7f0d01d2

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->acc_nav_arrow:Landroid/widget/ImageView;

    .line 272
    const v4, 0x7f0d01cf

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->username:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f0d01d1

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->acc_type:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f0d01e5

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->recyler_acc:Landroid/support/v7/widget/RecyclerView;

    .line 276
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 277
    .local v2, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->recyler_acc:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 279
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v4, p0}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->nav_header:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->txtSchedule:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v4, 0x7f0d00ab

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/NavigationView;

    .line 284
    .local v3, "navigationView":Landroid/support/design/widget/NavigationView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 286
    const v4, 0x7f0d01df

    invoke-virtual {p0, v4}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 287
    .local v0, "llContactUs":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v7}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 289
    .local v1, "llFAQ":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DemoUser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->username:Landroid/widget/TextView;

    const-string v5, "Demo User"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setListener()V

    .line 298
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setToolbarTitle()V

    .line 299
    return-void
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 820
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 821
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static myToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    return-void
.end method

.method private onClickOfProfileImage()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/UserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 514
    :goto_0
    const v1, 0x7f050011

    const v2, 0x7f050012

    invoke-virtual {p0, v1, v2}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 515
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 516
    return-void

    .line 510
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/UserProfileNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onClickOnLogoutMenu()V
    .locals 7

    .prologue
    .line 520
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 522
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 523
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 525
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 526
    .local v4, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 527
    .local v3, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 528
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 530
    .local v2, "tvOK":Landroid/widget/TextView;
    const-string v5, "Logout"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const-string v5, "Are you sure to logout ?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    new-instance v5, Lcom/iot/engine/MainActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/MainActivity$2;-><init>(Lcom/iot/engine/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    new-instance v5, Lcom/iot/engine/MainActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/MainActivity$3;-><init>(Lcom/iot/engine/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 552
    return-void
.end method

.method private parseMqttCallBackByUsingCases(Ljava/lang/String;)V
    .locals 30
    .param p1, "mqttResponse"    # Ljava/lang/String;

    .prologue
    .line 842
    :try_start_0
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 843
    .local v13, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 844
    .local v15, "formattedDate":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 846
    .local v21, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "learning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "LearningMqttCallback"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "Info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 850
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->messageType:Ljava/lang/String;

    const-string v3, "Internet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 852
    :cond_1
    const-string v2, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1046
    :cond_3
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "NotificationSend"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1050
    :cond_4
    const-string v2, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfileScheduler"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1052
    new-instance v17, Lorg/json/JSONArray;

    const-string v2, "Switchlist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v17, "jArr":Lorg/json/JSONArray;
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_8

    .line 1054
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 1055
    .local v23, "jObjSwitch":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "siwtchid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmerValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateAllSwitchStatusNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 852
    .end local v17    # "jArr":Lorg/json/JSONArray;
    .end local v23    # "jObjSwitch":Lorg/json/JSONObject;
    .end local v26    # "k":I
    :sswitch_0
    const-string v4, "Switch_ON_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "Switch_Name_update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "Switch_Hide_Unhide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "Switch_Lock_Unlock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "Room_Name_Update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "TurnOffAll"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "Schedule_Switch_List"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "Schedule_Switch_update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "Schedule_Switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "Schedule_Switch_delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "changeStatusByRoom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "Room_Switch_List"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "EditProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "DeleteProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "AddProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "Schedule_Profile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "Schedule_Profile_Delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "Schedule_Profile_Update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "GetProfileList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "Room_Hide_Unhide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "ARMED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "activityList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "GO_CAM_LIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x16

    goto/16 :goto_0

    .line 855
    :pswitch_0
    const-string v2, "MainActivity"

    const-string v3, "CallBack Switch_ON_OFF: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateSwitchStatusMqtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateRecentSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1086
    .end local v13    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v15    # "formattedDate":Ljava/lang/String;
    .end local v21    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1087
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void

    .line 861
    .restart local v13    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v15    # "formattedDate":Ljava/lang/String;
    .restart local v21    # "jObj":Lorg/json/JSONObject;
    :pswitch_1
    :try_start_1
    const-string v2, "MainActivity"

    const-string v3, "CallBack Switch_Name_update: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchname"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "switchimageId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateSwitchNameMqtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :pswitch_2
    const-string v2, "MainActivity"

    const-string v3, "CallBack Switch_Hide_Unhide: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hidestatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateHideMqtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 871
    :pswitch_3
    const-string v2, "MainActivity"

    const-string v3, "CallBack Switch_Lock_Unlock: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lockstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateLockMqtt(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 876
    :pswitch_4
    const-string v2, "MainActivity"

    const-string v3, "CallBack Room_Name_Update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "RoomId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RoomName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "roomimageId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateRoomNameMqtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 881
    :pswitch_5
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: turnOff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v17, Lorg/json/JSONArray;

    const-string v2, "Switchlist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 883
    .restart local v17    # "jArr":Lorg/json/JSONArray;
    const/16 v26, 0x0

    .restart local v26    # "k":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_3

    .line 884
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 885
    .restart local v23    # "jObjSwitch":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "siwtchid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmerValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateAllSwitchStatusNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 892
    .end local v17    # "jArr":Lorg/json/JSONArray;
    .end local v23    # "jObjSwitch":Lorg/json/JSONObject;
    .end local v26    # "k":I
    :pswitch_6
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Switch_List"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v2, "scheduleList"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iot/engine/MainActivity;->getScheduleListFromMqttCallBack(Ljava/lang/String;)V

    .line 895
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "changeStatusByRoom"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 896
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "NotifyScheduleList"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 901
    :pswitch_7
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 902
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Switch_update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v2, "scheduleDateTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 904
    .local v29, "strDateTime":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "schedulerid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v29, v4

    const-string v5, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v29, v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "repeatWeek"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, LDatabase/DatabaseHandler;->updateSwitchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 909
    .end local v29    # "strDateTime":[Ljava/lang/String;
    :pswitch_8
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 910
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Switch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/iot/engine/MainActivity;->createHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v28

    .line 912
    .local v28, "mMapSwitchSch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Schedule Data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 918
    .end local v28    # "mMapSwitchSch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_9
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 919
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Switch_delete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "schedulerid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteSchedule(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 926
    :pswitch_a
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: changeStatusByRoom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "RoomId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "RoomId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateDimmerSwitch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 934
    :pswitch_b
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Room_Switch_List"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v2, "switchAndRoomList"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iot/engine/MainActivity;->getRoomAndSwitchList(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v3, "isArmed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, LSession/SessionManager;->setArmFlag(Z)V

    goto/16 :goto_1

    .line 940
    :pswitch_c
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 941
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: EditProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "profileId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profileName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Switchlist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "switchstatus"

    .line 943
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 942
    invoke-virtual/range {v2 .. v7}, LDatabase/DatabaseHandler;->setProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProfileNotification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 949
    :pswitch_d
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 950
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: DeleteProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "profileId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteMode(Ljava/lang/String;)V

    .line 952
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProfileNotification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 957
    :pswitch_e
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 958
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: AddProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "profileId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profileName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Switchlist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, LDatabase/DatabaseHandler;->setProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProfileNotification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 964
    :pswitch_f
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 965
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 967
    .local v27, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "profile_id"

    const-string v3, "profileId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v2, "profile_schedule_id"

    const-string v3, "schedulerid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v2, "Repeate"

    const-string v3, "repeatWeek"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v2, "SwitchStatus"

    const-string v3, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "profile_name"

    const-string v3, "profileName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v2, "Schedule_dates"

    const-string v3, "scheduleDateTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 977
    .end local v27    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_10
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "schedulerid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteProfileSchedule(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 984
    :pswitch_11
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 985
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBack: Schedule_Profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 987
    .restart local v27    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "profile_id"

    const-string v3, "profileId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v2, "profile_schedule_id"

    const-string v3, "schedulerid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v2, "Repeate"

    const-string v3, "repeatWeek"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v2, "SwitchStatus"

    const-string v3, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v2, "profile_name"

    const-string v3, "profileName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v2, "Schedule_dates"

    const-string v3, "scheduleDateTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 998
    .end local v27    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_12
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 999
    const-string v2, "MainActivity"

    const-string v3, "parseMqttCallBackByUsingCases: GetProfileList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v18, Lorg/json/JSONArray;

    const-string v2, "profileList"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v18, "jArrPList":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 1002
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 1003
    .local v22, "jObjList":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "profileId"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profileName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "switchList"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "switchStatus"

    .line 1004
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dimmerValues"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1003
    invoke-virtual/range {v2 .. v7}, LDatabase/DatabaseHandler;->setProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1006
    .end local v22    # "jObjList":Lorg/json/JSONObject;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProfileNotification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1011
    .end local v16    # "i":I
    .end local v18    # "jArrPList":Lorg/json/JSONArray;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "RoomId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hidestatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateRoomHidestatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "RoomId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1015
    :pswitch_14
    const-string v2, "isArmed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LSession/SessionManager;->setArmFlag(Z)V

    goto/16 :goto_1

    .line 1018
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LSession/SessionManager;->setArmFlag(Z)V

    goto/16 :goto_1

    .line 1022
    :pswitch_15
    const-string v2, "MainActivity"

    const-string v3, "Activity: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v25, Lorg/json/JSONArray;

    const-string v2, "activityList"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v25, "jsonArray":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 1026
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1027
    .local v19, "jData":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "created_date"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "roomname"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "image"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v15

    invoke-virtual/range {v2 .. v8}, LDatabase/DatabaseHandler;->insertNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1032
    .end local v16    # "i":I
    .end local v19    # "jData":Lorg/json/JSONObject;
    .end local v25    # "jsonArray":Lorg/json/JSONArray;
    :pswitch_16
    new-instance v24, Lorg/json/JSONArray;

    const-string v2, "camList"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v24, "jsonArr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->deleteAllCameraInfo()V

    .line 1034
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 1036
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 1037
    .local v20, "jOO":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "localIP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "localPort"

    .line 1038
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "internetIP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "internetPort"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "camType"

    .line 1039
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "camUserName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "camPassword"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "camURL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1037
    invoke-virtual/range {v2 .. v12}, LDatabase/DatabaseHandler;->AddUpdateCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1057
    .end local v16    # "i":I
    .end local v20    # "jOO":Lorg/json/JSONObject;
    .end local v24    # "jsonArr":Lorg/json/JSONArray;
    .restart local v17    # "jArr":Lorg/json/JSONArray;
    .restart local v26    # "k":I
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "NotificationSend"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1058
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "MqttCallBack"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1061
    .end local v17    # "jArr":Lorg/json/JSONArray;
    .end local v26    # "k":I
    :cond_9
    const-string v2, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Schedular_Switch_ON_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "switchid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchstatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmervalue"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LDatabase/DatabaseHandler;->updateSwitchStatusMqtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "NotificationSend"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1064
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "MqttCallBack"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1067
    :cond_a
    const-string v2, "activityid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    const-string v3, "activityid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "RoomName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "userimage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v15

    invoke-virtual/range {v2 .. v8}, LDatabase/DatabaseHandler;->insertNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "NotificationSend"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1072
    :cond_b
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/MainActivity;->messageType:Ljava/lang/String;

    const-string v3, "Internet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1073
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "MqttCallBack"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1076
    :cond_d
    const-string v2, "userId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1077
    const-string v2, "userimage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1078
    const-string v2, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Physically switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1079
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "BlastCallBack"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image_url"

    const-string v5, "PH"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_3

    .line 1081
    :cond_e
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "BlastCallBack"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image_url"

    const-string v5, "userimage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 852
    :sswitch_data_0
    .sparse-switch
        -0x76e1c919 -> :sswitch_11
        -0x60a6d6bf -> :sswitch_6
        -0x574f3b2f -> :sswitch_12
        -0x5682c793 -> :sswitch_3
        -0x3f84b04c -> :sswitch_13
        -0x3ed2bf73 -> :sswitch_2
        -0x3ecaa3e1 -> :sswitch_c
        -0x2df1e047 -> :sswitch_4
        -0x29e24218 -> :sswitch_e
        -0x255bff5b -> :sswitch_16
        -0x95a0224 -> :sswitch_8
        0x3ba67db -> :sswitch_14
        0x95b2472 -> :sswitch_1
        0x10f9255e -> :sswitch_d
        0x372d1801 -> :sswitch_f
        0x41bcdc34 -> :sswitch_a
        0x566c756e -> :sswitch_9
        0x6111f84d -> :sswitch_15
        0x61cb163a -> :sswitch_0
        0x6b8483c9 -> :sswitch_10
        0x70ffe185 -> :sswitch_b
        0x7406288c -> :sswitch_7
        0x752ee0af -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private redirectFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/iot/engine/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 380
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 381
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 383
    .end local v0    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private setDrawerAdapter()V
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/iot/engine/MainActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getAllUserInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    .local v0, "arrListProfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v1, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "email"

    const-string v3, "Add new home account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "isSelected"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, LAdapter/UserAdapter;

    invoke-direct {v2, p0, v0, p0}, LAdapter/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iot/engine/MainActivity;)V

    iput-object v2, p0, Lcom/iot/engine/MainActivity;->adapter:LAdapter/UserAdapter;

    .line 320
    iget-object v2, p0, Lcom/iot/engine/MainActivity;->recyler_acc:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/iot/engine/MainActivity;->adapter:LAdapter/UserAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 322
    return-void
.end method

.method private setDrawerToggleEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 353
    const v1, 0x7f0d00a8

    invoke-virtual {p0, v1}, Lcom/iot/engine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 354
    new-instance v0, Lcom/iot/engine/MainActivity$1;

    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/iot/engine/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f0600a5

    const v6, 0x7f0600a4

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/iot/engine/MainActivity$1;-><init>(Lcom/iot/engine/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 370
    .local v0, "actionBarDrawerToggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/iot/engine/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/iot/engine/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 374
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 375
    return-void
.end method

.method private setHome()V
    .locals 1

    .prologue
    .line 347
    new-instance v0, LFragments/Home;

    invoke-direct {v0}, LFragments/Home;-><init>()V

    .line 348
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, v0}, Lcom/iot/engine/MainActivity;->redirectFragment(Landroid/support/v4/app/Fragment;)V

    .line 349
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtSettings:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtShareControl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtCallUs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtHelp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->txtLogout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llRemote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llAccountChange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llFAQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llCamera:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llRateUs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-void
.end method

.method private setShareControl()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "sessionManager":LSession/SessionManager;
    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/MainActivity;->userType:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->userType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->userType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->userType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :cond_2
    return-void
.end method

.method private setToolbarTitle()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method private setTowerFlag()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 302
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getTowerFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llViewRemote:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llRemote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llViewRemote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llRemote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUserImage()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "path":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/MainActivity;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->username:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->acc_type:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->username:Landroid/widget/TextView;

    const-string v2, "Demo User"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->acc_type:Landroid/widget/TextView;

    const-string v2, "demouser@gmail.com"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showAccountDetails()V
    .locals 2

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iot/engine/MainActivity;->ShowMenuFlag:Z

    .line 608
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llMenuList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->recyler_acc:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 610
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setDrawerAdapter()V

    .line 611
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->acc_nav_arrow:Landroid/widget/ImageView;

    const v1, 0x7f0201a0

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    return-void
.end method

.method private showLoginDialog()V
    .locals 6

    .prologue
    .line 616
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    .line 618
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 619
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const v5, 0x7f040073

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 620
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const v5, 0x7f0800ed

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 622
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const v5, 0x7f0d01a9

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 623
    .local v1, "edtUsername":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const v5, 0x7f0d00d6

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 624
    .local v0, "edtPassword":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const v5, 0x7f0d01b6

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 625
    .local v3, "tvOK":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    const v5, 0x7f0d01b5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 627
    .local v2, "tvCancel":Landroid/widget/TextView;
    new-instance v4, Lcom/iot/engine/MainActivity$4;

    invoke-direct {v4, p0, v1, v0}, Lcom/iot/engine/MainActivity$4;-><init>(Lcom/iot/engine/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    new-instance v4, Lcom/iot/engine/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/iot/engine/MainActivity$5;-><init>(Lcom/iot/engine/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v4, p0, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 666
    return-void
.end method

.method private showMenuList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    iput-boolean v1, p0, Lcom/iot/engine/MainActivity;->ShowMenuFlag:Z

    .line 601
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->llMenuList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->recyler_acc:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->acc_nav_arrow:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method private syncAccountToAnotherUser(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 575
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->logoutUser()V

    .line 576
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->deleteAll()V

    .line 578
    const-string v0, "user_name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "arrName":[Ljava/lang/String;
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const-string v4, "email"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "mobile_no"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "user_type"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "birth_date"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, LSession/SessionManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LSession/SessionManager;->setUserImage(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v0, "home_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LSession/SessionManager;->setHomeId(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v0, "token"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LSession/SessionManager;->saveSecurityToken(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LSession/SessionManager;->savePassword(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v0, "birth_date"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LSession/SessionManager;->saveBirthDate(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LSession/SessionManager;->setBlastFlag(Z)V

    .line 587
    new-instance v9, LDatabase/DatabaseHandler;

    invoke-direct {v9, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 588
    .local v9, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v9}, LDatabase/DatabaseHandler;->setAllUserAccountActiveFlag()V

    .line 589
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, LDatabase/DatabaseHandler;->setUserAccountActiveFlag(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v1, "192.168.0.119"

    invoke-virtual {v0, v1}, LSession/SessionManager;->setAppUrl(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const-string v1, "192.168.0.119"

    invoke-virtual {v0, v1}, LSession/SessionManager;->setRouterIP(Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 597
    .end local v8    # "arrName":[Ljava/lang/String;
    .end local v9    # "db":LDatabase/DatabaseHandler;
    :goto_1
    return-void

    .line 572
    :catch_0
    move-exception v10

    .local v10, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 594
    .end local v10    # "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_1
    move-exception v10

    .line 595
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 826
    :try_start_0
    const-string v1, "MainActivity -->"

    const-string v2, "Connection Lost"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 0
    .param p1, "iMqttDeliveryToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 1186
    return-void
.end method

.method public logoutApp()V
    .locals 3

    .prologue
    .line 555
    iget-object v2, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->logoutUser()V

    .line 556
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->deleteAll()V

    .line 557
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteUserAccount()V

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iot/engine/FirstPage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v1}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 563
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "mqttMessage"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 835
    const-string v0, "MainActivity "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessArrived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iot/engine/MainActivity;->parseMqttCallBackByUsingCases(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/iot/engine/MainActivity;->mBackPressed:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 388
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please press back button again to exit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iot/engine/MainActivity;->mBackPressed:J

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f050012

    const v5, 0x7f050011

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 502
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 405
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 410
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/ShareControlUserList;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 413
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 419
    :pswitch_3
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 420
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const-string v3, "Device not supported"

    invoke-static {p0, v3}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    :goto_1
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 423
    :cond_0
    const-string v3, "tel:8983012131"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 424
    .local v1, "number":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 430
    .end local v1    # "number":Landroid/net/Uri;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    const-string v4, "mailto:support@gsmarthome.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Help"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 433
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 436
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/AboutUs;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 438
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 439
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 442
    :pswitch_6
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->onClickOnLogoutMenu()V

    goto/16 :goto_0

    .line 446
    :pswitch_7
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->onClickOfProfileImage()V

    goto/16 :goto_0

    .line 450
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/ScheduleListTab;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 452
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 453
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 458
    :pswitch_9
    iget-boolean v3, p0, Lcom/iot/engine/MainActivity;->ShowMenuFlag:Z

    if-eqz v3, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->showMenuList()V

    goto/16 :goto_0

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->showAccountDetails()V

    goto/16 :goto_0

    .line 467
    :pswitch_a
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 468
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 469
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://play.google.com/store/apps/details?id=com.iot.engine"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 472
    :pswitch_b
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 473
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 474
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/Faq;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 478
    :pswitch_c
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 479
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 483
    :goto_2
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 484
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 481
    :cond_2
    const-string v3, "You are a demo user"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 488
    :pswitch_d
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 489
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 493
    :goto_3
    invoke-virtual {p0, v5, v6}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 494
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 491
    :cond_3
    const-string v3, "You are a demo user"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 400
    :pswitch_data_0
    .packed-switch 0x7f0d01ce
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onClickOfView(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Add new home account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->showLoginDialog()V

    .line 696
    :goto_0
    const v0, 0x7f050011

    const v1, 0x7f050012

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 697
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 698
    return-void

    .line 690
    :cond_0
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity;->syncAccountToAnotherUser(Ljava/util/HashMap;)V

    goto :goto_0

    .line 693
    :cond_1
    const-string v0, "You are Demo user"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v3, 0x7f040020

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->setContentView(I)V

    .line 151
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->initialiseControls()V

    .line 152
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setUserImage()V

    .line 153
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setShareControl()V

    .line 154
    new-instance v1, Lcom/iot/engine/AppRater;

    invoke-direct {v1}, Lcom/iot/engine/AppRater;-><init>()V

    .line 155
    .local v1, "appRater":Lcom/iot/engine/AppRater;
    invoke-static {p0}, Lcom/iot/engine/AppRater;->app_launched(Landroid/content/Context;)V

    .line 157
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/iot/engine/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 158
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v4, "<big>Pongo Home </big><small>Pro</small>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Lcom/iot/engine/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 164
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setHome()V

    .line 165
    invoke-direct {p0}, Lcom/iot/engine/MainActivity;->setDrawerToggleEvent()V

    .line 167
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "refreshedToken":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 170
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3, v2}, LSession/SessionManager;->saveDeviceToken(Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":8080/smart_home_local/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 179
    new-instance v3, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;

    invoke-direct {v3, p0, v7}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 181
    :cond_2
    new-instance v3, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;

    invoke-direct {v3, p0, v7}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    new-array v4, v5, [Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onLongPressClick(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Add new home account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    :goto_0
    const v0, 0x7f050011

    const v1, 0x7f050012

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/MainActivity;->overridePendingTransition(II)V

    .line 714
    iget-object v0, p0, Lcom/iot/engine/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 716
    return-void

    .line 707
    :cond_0
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity;->alertDialogForDeleteAccount(Ljava/util/HashMap;)V

    goto :goto_0

    .line 710
    :cond_1
    const-string v0, "You are Demo user"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/iot/engine/MainActivity;->thisMainInstance:Lcom/iot/engine/MainActivity;

    .line 222
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 211
    sput-object p0, Lcom/iot/engine/MainActivity;->thisMainInstance:Lcom/iot/engine/MainActivity;

    .line 212
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 213
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;)V

    .line 214
    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "emailInput"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 674
    .local v0, "emailPattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    const/4 v1, 0x0

    .line 678
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
