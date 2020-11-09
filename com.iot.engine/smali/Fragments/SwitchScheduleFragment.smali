.class public LFragments/SwitchScheduleFragment;
.super Landroid/support/v4/app/Fragment;
.source "SwitchScheduleFragment.java"

# interfaces
.implements LSession/IOnClickOfScheduleList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/SwitchScheduleFragment$ShowSchedulerList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchScheduleFragment"


# instance fields
.field private adapter:LAdapter/SchedularAdapter;

.field private db:LDatabase/DatabaseHandler;

.field private messageBroadcast:Landroid/content/BroadcastReceiver;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 206
    new-instance v0, LFragments/SwitchScheduleFragment$1;

    invoke-direct {v0, p0}, LFragments/SwitchScheduleFragment$1;-><init>(LFragments/SwitchScheduleFragment;)V

    iput-object v0, p0, LFragments/SwitchScheduleFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(LFragments/SwitchScheduleFragment;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # LFragments/SwitchScheduleFragment;

    .prologue
    .line 59
    iget-object v0, p0, LFragments/SwitchScheduleFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(LFragments/SwitchScheduleFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # LFragments/SwitchScheduleFragment;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 59
    iput-object p1, p0, LFragments/SwitchScheduleFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(LFragments/SwitchScheduleFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LFragments/SwitchScheduleFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, LFragments/SwitchScheduleFragment;->parseScheduleData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(LFragments/SwitchScheduleFragment;)V
    .locals 0
    .param p0, "x0"    # LFragments/SwitchScheduleFragment;

    .prologue
    .line 59
    invoke-direct {p0}, LFragments/SwitchScheduleFragment;->setAdpater()V

    return-void
.end method

.method private findViewbyId(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    const v1, 0x7f0d00d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, LFragments/SwitchScheduleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 78
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, LFragments/SwitchScheduleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    return-void
.end method

.method private parseScheduleData(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    const-string v8, "SwitchScheduleFragment"

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

    .line 139
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUCCESS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8}, LDatabase/DatabaseHandler;->deleteProfileScheduleList()V

    .line 145
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8}, LDatabase/DatabaseHandler;->deleteScheduleList()V

    .line 147
    new-instance v1, Lorg/json/JSONArray;

    const-string v8, "result"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "jArrList":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 149
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 150
    .local v3, "jObjResult":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v4, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    const-string v9, "switchId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 152
    .local v5, "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "scheduleDateTime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "strDateTime":[Ljava/lang/String;
    const-string v8, "profileId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    const-string v8, "SwitchID"

    const-string v9, "switchId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v8, "SwitchName"

    const-string v9, "SwitchName"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v8, "Schedule_dates"

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v8, "SwitchStatus"

    const-string v9, "switchStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v8, "Time"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v8, "RoomName"

    const-string v9, "RoomName"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v8, "schedule_id"

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v8, "DimmerValue"

    const-string v9, "dimmerValue"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v8, "DimmerStatus"

    const-string v9, "dimmerStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v8, "Repeate"

    const-string v9, "repeatWeek"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8, v4}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 148
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 168
    :cond_0
    const-string v8, "profile_id"

    const-string v9, "profileId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v8, "profile_schedule_id"

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v8, "Repeate"

    const-string v9, "repeatWeek"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v8, "SwitchStatus"

    const-string v9, "switchStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    const-string v9, "profileId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, LDatabase/DatabaseHandler;->getModeInfoByID(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 173
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "profile_name"

    const-string v9, "Mode_Name"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v8, "Schedule_dates"

    const-string v9, "scheduleDateTime"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v8, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8, v4}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    .end local v0    # "i":I
    .end local v1    # "jArrList":Lorg/json/JSONArray;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "jObjResult":Lorg/json/JSONObject;
    .end local v4    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "mMapSwitchInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "strDateTime":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 184
    :cond_1
    return-void
.end method

.method private setAdpater()V
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getSchedulerInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    .local v0, "arrayListSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 189
    new-instance v1, LAdapter/SchedularAdapter;

    invoke-virtual {p0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "SCHEDULE"

    invoke-direct {v1, v2, v0, v3}, LAdapter/SchedularAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, LFragments/SwitchScheduleFragment;->adapter:LAdapter/SchedularAdapter;

    .line 190
    iget-object v1, p0, LFragments/SwitchScheduleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, LFragments/SwitchScheduleFragment;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 191
    iget-object v1, p0, LFragments/SwitchScheduleFragment;->adapter:LAdapter/SchedularAdapter;

    invoke-virtual {v1}, LAdapter/SchedularAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method


# virtual methods
.method public onClickOfScheduleList(Ljava/util/HashMap;)V
    .locals 0
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
    .line 85
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    const v0, 0x7f0400b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/SwitchScheduleFragment;->view:Landroid/view/View;

    .line 71
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/SwitchScheduleFragment;->db:LDatabase/DatabaseHandler;

    .line 72
    iget-object v0, p0, LFragments/SwitchScheduleFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, LFragments/SwitchScheduleFragment;->findViewbyId(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, LFragments/SwitchScheduleFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 204
    invoke-virtual {p0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/SwitchScheduleFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 196
    invoke-virtual {p0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/SwitchScheduleFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotifyScheduleList"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 198
    new-instance v0, LFragments/SwitchScheduleFragment$ShowSchedulerList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LFragments/SwitchScheduleFragment$ShowSchedulerList;-><init>(LFragments/SwitchScheduleFragment;LFragments/SwitchScheduleFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, LFragments/SwitchScheduleFragment$ShowSchedulerList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method
