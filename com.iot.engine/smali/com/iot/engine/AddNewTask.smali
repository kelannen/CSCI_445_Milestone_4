.class public Lcom/iot/engine/AddNewTask;
.super Landroid/app/Activity;
.source "AddNewTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LSession/IOnClickOfScheduleList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;,
        Lcom/iot/engine/AddNewTask$ShowSchedulerList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddNewTask"


# instance fields
.field adapter:LAdapter/SchedularAdapter;

.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field db:LDatabase/DatabaseHandler;

.field imgBack:Landroid/widget/ImageView;

.field private mScheduleId:Ljava/lang/String;

.field private message:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field txtAddTask:Landroid/widget/TextView;

.field txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->messageType:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/iot/engine/AddNewTask$4;

    invoke-direct {v0, p0}, Lcom/iot/engine/AddNewTask$4;-><init>(Lcom/iot/engine/AddNewTask;)V

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iot/engine/AddNewTask;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/AddNewTask;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iot/engine/AddNewTask;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/AddNewTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/iot/engine/AddNewTask;->parseScheduleData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/AddNewTask;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/iot/engine/AddNewTask;->alertDialogDelete(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/iot/engine/AddNewTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iot/engine/AddNewTask;->mScheduleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iot/engine/AddNewTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iot/engine/AddNewTask;->mScheduleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iot/engine/AddNewTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddNewTask;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iot/engine/AddNewTask;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method private alertDialogDelete(Ljava/util/HashMap;)V
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
    .line 279
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 281
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 283
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 285
    .local v4, "txtDelete":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    .local v2, "tvTitle":Landroid/widget/TextView;
    const-string v5, "Delete Schedule"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v5, Lcom/iot/engine/AddNewTask$2;

    invoke-direct {v5, p0, p1, v0}, Lcom/iot/engine/AddNewTask$2;-><init>(Lcom/iot/engine/AddNewTask;Ljava/util/HashMap;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v5, Lcom/iot/engine/AddNewTask$3;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/AddNewTask$3;-><init>(Lcom/iot/engine/AddNewTask;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 307
    return-void
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 200
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/AddNewTask;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->txtHeading:Landroid/widget/TextView;

    .line 201
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/AddNewTask;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 202
    const v1, 0x7f0d00d4

    invoke-virtual {p0, v1}, Lcom/iot/engine/AddNewTask;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->txtAddTask:Landroid/widget/TextView;

    .line 203
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/AddNewTask;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->imgBack:Landroid/widget/ImageView;

    .line 204
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->txtAddTask:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/AddNewTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 209
    return-void
.end method

.method private parseScheduleData(Ljava/lang/String;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "jObj":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SUCCESS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 150
    new-instance v2, Lorg/json/JSONArray;

    const-string v9, "result"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "jArrList":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 152
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    .local v4, "jObjResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v5, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "profileId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 157
    const-string v9, "switchId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 158
    .local v6, "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "scheduleDateTime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "strDateTime":[Ljava/lang/String;
    const-string v9, "SwitchID"

    const-string v10, "switchId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v9, "SwitchName"

    const-string v10, "SwitchName"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v9, "Schedule_dates"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v9, "SwitchStatus"

    const-string v10, "switchStatus"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v9, "Time"

    const/4 v10, 0x1

    aget-object v10, v8, v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v9, "RoomName"

    const-string v10, "RoomName"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v9, "schedule_id"

    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v9, "DimmerValue"

    const-string v10, "dimmerValue"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v9, "DimmerStatus"

    const-string v10, "dimmerStatus"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v9, "Repeate"

    const-string v10, "repeatWeek"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v0, v5}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 151
    .end local v6    # "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "strDateTime":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 173
    :cond_0
    const-string v9, "profile_id"

    const-string v10, "profileId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v9, "profile_schedule_id"

    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v9, "Repeate"

    const-string v10, "repeatWeek"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v9, "SwitchStatus"

    const-string v10, "switchStatus"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v9, "profileId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, LDatabase/DatabaseHandler;->getModeInfoByID(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 178
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "profile_name"

    const-string v10, "Mode_Name"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v9, "Schedule_dates"

    const-string v10, "scheduleDateTime"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v0, v5}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "i":I
    .end local v2    # "jArrList":Lorg/json/JSONArray;
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "jObjResult":Lorg/json/JSONObject;
    .end local v5    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 187
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 225
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iot/engine/Schedular_Activity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v2, "mapListEdit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/iot/engine/AddNewTask;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 230
    .local v1, "intent1":Landroid/content/Intent;
    const-string v4, "SwitchInfo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 231
    .local v3, "maplist":Ljava/util/HashMap;
    const-string v4, "SwitchInfo"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    const-string v4, "Operation"

    const-string v5, "ADD"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "EditInfo"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/iot/engine/AddNewTask;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "mapListEdit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "maplist":Ljava/util/HashMap;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/AddNewTask;->finish()V

    .line 240
    const v4, 0x7f050015

    const v5, 0x7f050016

    invoke-virtual {p0, v4, v5}, Lcom/iot/engine/AddNewTask;->overridePendingTransition(II)V

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0d00d4 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickOfScheduleList(Ljava/util/HashMap;)V
    .locals 4
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
    .line 248
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Edit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Delete"

    aput-object v3, v1, v2

    .line 249
    .local v1, "strArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Lcom/iot/engine/AddNewTask$1;

    invoke-direct {v2, p0, p1}, Lcom/iot/engine/AddNewTask$1;-><init>(Lcom/iot/engine/AddNewTask;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddNewTask;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/iot/engine/AddNewTask;->initializeControls()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->arrayList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->db:LDatabase/DatabaseHandler;

    .line 84
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->sessionManager:LSession/SessionManager;

    .line 85
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Internet"

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->messageType:Ljava/lang/String;

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "Localhub"

    iput-object v0, p0, Lcom/iot/engine/AddNewTask;->messageType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 195
    iget-object v0, p0, Lcom/iot/engine/AddNewTask;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Schedule List"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/AddNewTask$ShowSchedulerList;-><init>(Lcom/iot/engine/AddNewTask;Lcom/iot/engine/AddNewTask$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method public setAdapter()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/iot/engine/AddNewTask;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SwitchInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 213
    .local v0, "maplist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iot/engine/AddNewTask;->db:LDatabase/DatabaseHandler;

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, LDatabase/DatabaseHandler;->getSchedulerSwitchWiseInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->arrayList:Ljava/util/ArrayList;

    .line 214
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->arrayList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 215
    new-instance v1, LAdapter/SchedularAdapter;

    iget-object v2, p0, Lcom/iot/engine/AddNewTask;->arrayList:Ljava/util/ArrayList;

    const-string v3, "Add"

    invoke-direct {v1, p0, v2, v3}, LAdapter/SchedularAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iot/engine/AddNewTask;->adapter:LAdapter/SchedularAdapter;

    .line 216
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/iot/engine/AddNewTask;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 217
    iget-object v1, p0, Lcom/iot/engine/AddNewTask;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v1}, LAdapter/SchedularAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method
