.class public Lcom/iot/engine/ScheduleListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ScheduleListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LSession/IOnClickOfScheduleList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;,
        Lcom/iot/engine/ScheduleListActivity$ShowSchedulerList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleListActivity"


# instance fields
.field private adapter:LAdapter/SchedularAdapter;

.field private arrayListSchedule:Ljava/util/ArrayList;
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

.field private db:LDatabase/DatabaseHandler;

.field private imgBack:Landroid/widget/ImageView;

.field private mScheduleId:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->mScheduleId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/ScheduleListActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/ScheduleListActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iot/engine/ScheduleListActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/ScheduleListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleListActivity;->parseScheduleData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/ScheduleListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iot/engine/ScheduleListActivity;->setAdpater()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/ScheduleListActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleListActivity;->alertDialogDelete(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/iot/engine/ScheduleListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->mScheduleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/iot/engine/ScheduleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iot/engine/ScheduleListActivity;->mScheduleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iot/engine/ScheduleListActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method private alertDialogDelete(Ljava/util/HashMap;)V
    .locals 5
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
    .line 217
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 219
    const v4, 0x7f0400ae

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 221
    const v4, 0x7f0d01b5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    .local v2, "txtCancel":Landroid/widget/TextView;
    const v4, 0x7f0d01b6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 223
    .local v3, "txtDelete":Landroid/widget/TextView;
    const v4, 0x7f0d00a4

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .local v1, "tvMessage":Landroid/widget/TextView;
    const-string v4, "Delete"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string v4, "Are you sure you want to delete?"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v4, Lcom/iot/engine/ScheduleListActivity$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/iot/engine/ScheduleListActivity$2;-><init>(Lcom/iot/engine/ScheduleListActivity;Ljava/util/HashMap;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v4, Lcom/iot/engine/ScheduleListActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/ScheduleListActivity$3;-><init>(Lcom/iot/engine/ScheduleListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 243
    return-void
.end method

.method private initControl()V
    .locals 3

    .prologue
    .line 165
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->txtHeading:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->imgBack:Landroid/widget/ImageView;

    .line 167
    iget-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 170
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/ScheduleListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Schedule List"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method private parseScheduleData(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    const-string v8, "ScheduleListActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseScheduleData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "jObj":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUCCESS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    new-instance v2, Lorg/json/JSONArray;

    const-string v8, "result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "jArrList":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 132
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 133
    .local v4, "jObjResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v5, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "switchId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 136
    .local v6, "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "scheduleDateTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "strDateTime":[Ljava/lang/String;
    const-string v8, "SwitchID"

    const-string v9, "switchId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v8, "SwitchName"

    const-string v9, "SwitchName"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v8, "Schedule_dates"

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v8, "SwitchStatus"

    const-string v9, "switchStatus"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v8, "Time"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v8, "RoomName"

    const-string v9, "RoomName"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v8, "schedule_id"

    const-string v9, "id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v8, "DimmerValue"

    const-string v9, "dimmerValue"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v8, "DimmerStatus"

    const-string v9, "dimmerStatus"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v8, "Repeate"

    const-string v9, "repeatWeek"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0, v5}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 153
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "i":I
    .end local v2    # "jArrList":Lorg/json/JSONArray;
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "jObjResult":Lorg/json/JSONObject;
    .end local v5    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "strDateTime":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 154
    :cond_0
    return-void
.end method

.method private setAdpater()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getSchedulerInfo()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->arrayListSchedule:Ljava/util/ArrayList;

    .line 158
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->arrayListSchedule:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 159
    new-instance v0, LAdapter/SchedularAdapter;

    iget-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->arrayListSchedule:Ljava/util/ArrayList;

    const-string v2, "SCHEDULE"

    invoke-direct {v0, p0, v1, v2}, LAdapter/SchedularAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->adapter:LAdapter/SchedularAdapter;

    .line 160
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/ScheduleListActivity;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 161
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v0}, LAdapter/SchedularAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleListActivity;->finish()V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
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
    .line 189
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Edit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Delete"

    aput-object v3, v1, v2

    .line 190
    .local v1, "strArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Lcom/iot/engine/ScheduleListActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/iot/engine/ScheduleListActivity$1;-><init>(Lcom/iot/engine/ScheduleListActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleListActivity;->setContentView(I)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->arrayListSchedule:Ljava/util/ArrayList;

    .line 69
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/ScheduleListActivity;->db:LDatabase/DatabaseHandler;

    .line 70
    invoke-direct {p0}, Lcom/iot/engine/ScheduleListActivity;->initControl()V

    .line 71
    new-instance v0, Lcom/iot/engine/ScheduleListActivity$ShowSchedulerList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/ScheduleListActivity$ShowSchedulerList;-><init>(Lcom/iot/engine/ScheduleListActivity;Lcom/iot/engine/ScheduleListActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/ScheduleListActivity$ShowSchedulerList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method
