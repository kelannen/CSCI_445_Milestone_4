.class public Lcom/iot/engine/SelectSwitchExapabaleActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SelectSwitchExapabaleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/SelectSwitchExapabaleActivity$AsyncTaskForAddProfile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSwitchExapabale"


# instance fields
.field private btnConfirmSelect:Landroid/widget/Button;

.field private chkSelectAll:Landroid/widget/CheckBox;

.field private db:LDatabase/DatabaseHandler;

.field expListView:Landroid/widget/ExpandableListView;

.field private imgBack:Landroid/widget/ImageView;

.field listAdapter:LAdapter/SelectSwitchExapableAdapter;

.field private mRoomFlag:[Ljava/lang/String;

.field private mSwitchStatus:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field private onoff:Ljava/lang/String;

.field private roomList:Ljava/util/ArrayList;
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

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field switchListByroom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tvNote:Landroid/widget/TextView;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/SelectSwitchExapabaleActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->chkSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/SelectSwitchExapabaleActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/SelectSwitchExapabaleActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/SelectSwitchExapabaleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/iot/engine/SelectSwitchExapabaleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/iot/engine/SelectSwitchExapabaleActivity;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/SelectSwitchExapabaleActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method private initiControl()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->switchListByroom:Ljava/util/HashMap;

    .line 189
    const v0, 0x7f0d0235

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->expListView:Landroid/widget/ExpandableListView;

    .line 190
    const v0, 0x7f0d0236

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->chkSelectAll:Landroid/widget/CheckBox;

    .line 191
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    .line 192
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->tvNote:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->txtHeading:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->btnConfirmSelect:Landroid/widget/Button;

    .line 195
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->imgBack:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->btnConfirmSelect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Select Switch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->sessionManager:LSession/SessionManager;

    .line 201
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    .line 203
    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "off_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mSwitchStatus:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mSwitchStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ON"

    :goto_0
    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->onoff:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->tvNote:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Mode_Name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Profile to Turn Light "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->onoff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 204
    :cond_0
    const-string v0, "OFF"

    goto :goto_0
.end method

.method private onClickOfSubmitButton()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 221
    iget-object v6, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v6}, LAdapter/SelectSwitchExapableAdapter;->getAllSwitchItem()Ljava/util/HashMap;

    move-result-object v4

    .line 222
    .local v4, "mMapSwitchList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-string v6, "SelectSwitchExapabale"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClickOfSubmitButton: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v5, ""

    .line 224
    .local v5, "mONSwitchID":Ljava/lang/String;
    const-string v0, ""

    .line 226
    .local v0, "dimmerValues":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 228
    .local v3, "mArrlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 229
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "selected_switch"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "SwitchID"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "DimmerStatus"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "DimmerValue"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 241
    .end local v2    # "j":I
    .end local v3    # "mArrlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 243
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 244
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v6, Lcom/iot/engine/SelectSwitchExapabaleActivity$AsyncTaskForAddProfile;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/iot/engine/SelectSwitchExapabaleActivity$AsyncTaskForAddProfile;-><init>(Lcom/iot/engine/SelectSwitchExapabaleActivity;Lcom/iot/engine/SelectSwitchExapabaleActivity$1;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Lcom/iot/engine/SelectSwitchExapabaleActivity$AsyncTaskForAddProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    const-string v6, "SelectSwitchExapabale"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switch id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v6, "SelectSwitchExapabale"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dimmer Value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_3
    return-void

    .line 251
    :cond_4
    const-string v6, "Select switch to perform action."

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 248
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private setAdpater()V
    .locals 14

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getRooms()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "mEditList":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 94
    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, "splitList":[Ljava/lang/String;
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 99
    iget-object v1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "RoomId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->getSwitchesWithoutCurtain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 100
    .local v9, "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v12, 0x0

    .line 101
    .local v12, "roomSwitchselectionCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 102
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 103
    .local v11, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "selected_switch"

    const-string v1, "0"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_2
    array-length v0, v13

    if-ge v8, v0, :cond_0

    .line 105
    const-string v0, "SwitchID"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, v13, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "selected_switch"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 112
    :cond_0
    invoke-virtual {v9, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 115
    .end local v8    # "m":I
    .end local v11    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v12, v0, :cond_3

    .line 116
    const-string v0, "SelectSwitchExapabale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "room Switch selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "SelectSwitchExapabale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total room switch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->switchListByroom:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 126
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "roomSwitchselectionCount":I
    .end local v13    # "splitList":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 127
    iget-object v1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "RoomId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->getSwitchesWithoutCurtain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 128
    .restart local v9    # "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 129
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 130
    .restart local v11    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "selected_switch"

    const-string v1, "0"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v9, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 133
    .end local v11    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->switchListByroom:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 136
    .end local v7    # "j":I
    .end local v9    # "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .end local v6    # "i":I
    .end local v10    # "mEditList":Ljava/lang/String;
    :cond_7
    :goto_5
    new-instance v0, LAdapter/SelectSwitchExapableAdapter;

    iget-object v2, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->switchListByroom:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    iget-object v5, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->onoff:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LAdapter/SelectSwitchExapableAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    .line 159
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->expListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v0}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->showAllSelectionMark([Ljava/lang/String;)V

    .line 164
    return-void

    .line 140
    :cond_8
    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 143
    iget-object v1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->db:LDatabase/DatabaseHandler;

    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "RoomId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->getSwitchesWithoutCurtain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 144
    .restart local v9    # "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_9

    .line 145
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 146
    .restart local v11    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "selected_switch"

    const-string v1, "0"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v9, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 149
    .end local v11    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->switchListByroom:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 152
    .end local v7    # "j":I
    .end local v9    # "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->roomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->mRoomFlag:[Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 212
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->onClickOfSubmitButton()V

    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->finish()V

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x7f0d00d9 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
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
    const v0, 0x7f04009f

    invoke-virtual {p0, v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->initiControl()V

    .line 71
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->chkSelectAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;-><init>(Lcom/iot/engine/SelectSwitchExapabaleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct {p0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->setAdpater()V

    .line 86
    return-void
.end method

.method public showAllSelectionMark([Ljava/lang/String;)V
    .locals 5
    .param p1, "mRoomSelected"    # [Ljava/lang/String;

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "mCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 171
    aget-object v3, p1, v1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    array-length v3, p1

    if-ne v2, v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->chkSelectAll:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    :goto_1
    return-void

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->chkSelectAll:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
