.class public Lcom/iot/engine/SwitchSelectionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SwitchSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchSelectionActivity"


# instance fields
.field adapter:LAdapter/SelectSwitchesAdapter;

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

.field btnConfirmSelect:Landroid/widget/Button;

.field private chkSelectAll:Landroid/widget/CheckBox;

.field database:LDatabase/DatabaseHandler;

.field private imgBack:Landroid/widget/ImageView;

.field private mIconArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchIDOFF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwitchON:[I

.field private mSwitchStatus:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tvNote:Landroid/widget/TextView;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020156
        0x7f02014b
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f02015b
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f02014c
        0x7f020155
        0x7f02014e
        0x7f0200c1
        0x7f020113
    .end array-data
.end method

.method private OnClickOfConfirm()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 219
    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    invoke-virtual {v4}, LAdapter/SelectSwitchesAdapter;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 220
    .local v2, "mMapAllSwitcheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v3, ""

    .line 221
    .local v3, "mONSwitchID":Ljava/lang/String;
    const-string v0, ""

    .line 224
    .local v0, "dimmerValues":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 226
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "selected_switch"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "DimmerStatus"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "DimmerValue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 239
    :cond_2
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v4, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;-><init>(Lcom/iot/engine/SwitchSelectionActivity;Lcom/iot/engine/SwitchSelectionActivity$1;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    const-string v4, "SwitchSelectionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v4, "SwitchSelectionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimmer Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_2
    return-void

    .line 249
    :cond_3
    const-string v4, "Select switch to perform action."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 246
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/iot/engine/SwitchSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iot/engine/SwitchSelectionActivity;->setSelectionAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/SwitchSelectionActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/SwitchSelectionActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iot/engine/SwitchSelectionActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/SwitchSelectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/iot/engine/SwitchSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iot/engine/SwitchSelectionActivity;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method private initializeControl()V
    .locals 3

    .prologue
    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    .line 159
    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->btnConfirmSelect:Landroid/widget/Button;

    .line 160
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 161
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->imgBack:Landroid/widget/ImageView;

    .line 162
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->txtHeading:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0d00d8

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->tvNote:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0d0236

    invoke-virtual {p0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->chkSelectAll:Landroid/widget/CheckBox;

    .line 165
    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Select Switch"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 169
    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->btnConfirmSelect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->chkSelectAll:Landroid/widget/CheckBox;

    new-instance v2, Lcom/iot/engine/SwitchSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/iot/engine/SwitchSelectionActivity$1;-><init>(Lcom/iot/engine/SwitchSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    return-void
.end method

.method private setAdpater()V
    .locals 9

    .prologue
    .line 102
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->database:LDatabase/DatabaseHandler;

    invoke-virtual {v5}, LDatabase/DatabaseHandler;->getAllSwitches()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EDIT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EDIT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "mEditList":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 107
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "splitList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 109
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 110
    .local v4, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "selected_switch"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const-string v5, "selected_switch"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "splitList":[Ljava/lang/String;
    .end local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 121
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 122
    .restart local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "selected_switch"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    .end local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v5, "Swirch "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAdpater: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "i":I
    .end local v2    # "mEditList":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_7

    .line 143
    iget-object v6, p0, Lcom/iot/engine/SwitchSelectionActivity;->database:LDatabase/DatabaseHandler;

    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v7, "RoomId"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, LDatabase/DatabaseHandler;->isRoomHideSwitch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 144
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    :cond_5
    const-string v5, "SwitchSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAdpater Hide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 127
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ACTION"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 131
    .restart local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "SwitchSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAdpater: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "selected_switch"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 150
    .end local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v5, LAdapter/SelectSwitchesAdapter;

    iget-object v6, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/iot/engine/SwitchSelectionActivity;->mIconArrayList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchStatus:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7, v8}, LAdapter/SelectSwitchesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    .line 151
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    invoke-virtual {v5}, LAdapter/SelectSwitchesAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method private setSelectionAdapter()V
    .locals 4

    .prologue
    .line 198
    new-instance v0, LAdapter/SelectSwitchesAdapter;

    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mIconArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchStatus:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, LAdapter/SelectSwitchesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    .line 199
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity;->adapter:LAdapter/SelectSwitchesAdapter;

    invoke-virtual {v0}, LAdapter/SelectSwitchesAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 208
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->finish()V

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-direct {p0}, Lcom/iot/engine/SwitchSelectionActivity;->OnClickOfConfirm()V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x7f0d00d9 -> :sswitch_1
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f040029

    invoke-virtual {p0, v2}, Lcom/iot/engine/SwitchSelectionActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/iot/engine/SwitchSelectionActivity;->initializeControl()V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mIconArrayList:Ljava/util/ArrayList;

    .line 77
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mIconArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "off_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchStatus:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchStatus:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ON"

    .line 80
    .local v1, "onoff":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->tvNote:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Mode_Name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Profile to Turn Light "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "Internet"

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->messageType:Ljava/lang/String;

    .line 88
    :goto_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchON:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->mIconArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity;->mSwitchON:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    .end local v0    # "index":I
    .end local v1    # "onoff":Ljava/lang/String;
    :cond_0
    const-string v1, "OFF"

    goto :goto_0

    .line 85
    .restart local v1    # "onoff":Ljava/lang/String;
    :cond_1
    const-string v2, "Localhub"

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->messageType:Ljava/lang/String;

    goto :goto_1

    .line 93
    .restart local v0    # "index":I
    :cond_2
    new-instance v2, LSession/SessionManager;

    invoke-direct {v2, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->sessionManager:LSession/SessionManager;

    .line 94
    new-instance v2, LDatabase/DatabaseHandler;

    invoke-direct {v2, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity;->database:LDatabase/DatabaseHandler;

    .line 96
    invoke-direct {p0}, Lcom/iot/engine/SwitchSelectionActivity;->setAdpater()V

    .line 98
    return-void
.end method
