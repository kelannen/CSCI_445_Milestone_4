.class public LFragments/Activities;
.super Landroid/support/v4/app/Fragment;
.source "Activities.java"


# static fields
.field public static prgmImages:[I

.field public static prgmNameList:[Ljava/lang/String;

.field public static roomNameList:[Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field db:LDatabase/DatabaseHandler;

.field lv:Landroid/widget/ListView;

.field private messageActivity:Landroid/content/BroadcastReceiver;

.field prgmName:Ljava/util/ArrayList;

.field session:LSession/SessionManager;

.field private tab_badge:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LFragments/Activities;->prgmImages:[I

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jason switch ON Bulb"

    aput-object v1, v0, v3

    const-string v1, "Martin switch ON Fan "

    aput-object v1, v0, v4

    const-string v1, "Jenifer switch OFF Lamp "

    aput-object v1, v0, v5

    const-string v1, "Martin switch ON AC"

    aput-object v1, v0, v6

    const-string v1, "Mary switch OFF Tube"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Grace switch ON Washing Machine"

    aput-object v2, v0, v1

    sput-object v0, LFragments/Activities;->prgmNameList:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hall"

    aput-object v1, v0, v3

    const-string v1, "Bedroom"

    aput-object v1, v0, v4

    const-string v1, "Kitchen"

    aput-object v1, v0, v5

    const-string v1, "Hall"

    aput-object v1, v0, v6

    const-string v1, "Bedroom"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Kitchen"

    aput-object v2, v0, v1

    sput-object v0, LFragments/Activities;->roomNameList:[Ljava/lang/String;

    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f020104
        0x7f020103
        0x7f020105
        0x7f020103
        0x7f020105
        0x7f020103
        0x7f02016c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 102
    new-instance v0, LFragments/Activities$1;

    invoke-direct {v0, p0}, LFragments/Activities$1;-><init>(LFragments/Activities;)V

    iput-object v0, p0, LFragments/Activities;->messageActivity:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(LFragments/Activities;)V
    .locals 0
    .param p0, "x0"    # LFragments/Activities;

    .prologue
    .line 34
    invoke-direct {p0}, LFragments/Activities;->setNotificationAdapter()V

    return-void
.end method

.method private getDemoUserNotification()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "mMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, LFragments/Activities;->prgmNameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 80
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    .local v1, "lMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Notify_Message"

    sget-object v4, LFragments/Activities;->prgmNameList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v3, "ReadFlag"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v3, "RoomName"

    sget-object v4, LFragments/Activities;->roomNameList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v3, "UserImage"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "lMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method private initWidgets()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, LFragments/Activities;->context:Landroid/content/Context;

    .line 57
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Activities;->session:LSession/SessionManager;

    .line 60
    iget-object v0, p0, LFragments/Activities;->view:Landroid/view/View;

    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LFragments/Activities;->lv:Landroid/widget/ListView;

    .line 61
    invoke-direct {p0}, LFragments/Activities;->setNotificationAdapter()V

    .line 63
    return-void
.end method

.method private setNotificationAdapter()V
    .locals 6

    .prologue
    .line 66
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "database":LDatabase/DatabaseHandler;
    iget-object v2, p0, LFragments/Activities;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DemoUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-direct {p0}, LFragments/Activities;->getDemoUserNotification()Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    .local v1, "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, LFragments/Activities;->lv:Landroid/widget/ListView;

    new-instance v3, LAdapter/AdapterActivity;

    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, LFragments/Activities;->prgmImages:[I

    invoke-direct {v3, v4, v5, v1}, LAdapter/AdapterActivity;-><init>(Landroid/content/Context;[ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    :goto_0
    return-void

    .line 71
    .end local v1    # "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getNotificationMessage()Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    .restart local v1    # "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, LFragments/Activities;->lv:Landroid/widget/ListView;

    new-instance v3, LAdapter/AdapterActivity;

    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, LFragments/Activities;->prgmImages:[I

    invoke-direct {v3, v4, v5, v1}, LAdapter/AdapterActivity;-><init>(Landroid/content/Context;[ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
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
    .line 51
    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/Activities;->view:Landroid/view/View;

    .line 52
    invoke-direct {p0}, LFragments/Activities;->initWidgets()V

    .line 53
    iget-object v0, p0, LFragments/Activities;->view:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 99
    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Activities;->messageActivity:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 93
    invoke-virtual {p0}, LFragments/Activities;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Activities;->messageActivity:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    return-void
.end method
