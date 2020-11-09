.class public Lcom/iot/engine/AddRooms;
.super Landroid/app/Activity;
.source "AddRooms.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddRooms"


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private db:LDatabase/DatabaseHandler;

.field private edtRoomName:Landroid/widget/EditText;

.field imgBack:Landroid/widget/ImageView;

.field private listRoomType:Ljava/util/ArrayList;
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

.field private mRoomName:Ljava/lang/String;

.field private methodType:I

.field private operation:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private roomId:Ljava/lang/String;

.field private roomImageID:Ljava/lang/String;

.field roomList:[Ljava/lang/String;

.field private roomTypeId:Ljava/lang/String;

.field private selectionFlag:Z

.field private sessionManager:LSession/SessionManager;

.field private spnRoomType:Landroid/widget/Spinner;

.field private strHeader:Ljava/lang/String;

.field private strRoomName:Ljava/lang/String;

.field private strWebserviceName:Ljava/lang/String;

.field private txtHeading:Landroid/widget/TextView;

.field private txtType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->txtType:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->operation:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->strHeader:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->strRoomName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->strWebserviceName:Ljava/lang/String;

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bedroom"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Hall"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Kitchen"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bathroom"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Balcony"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Living Room"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Terrace"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Study Room"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Kid Room"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Parking"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Lobby"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Office"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->roomList:[Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcom/iot/engine/AddRooms;->selectionFlag:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/AddRooms;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/AddRooms;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/AddRooms;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/AddRooms;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/AddRooms;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->roomImageID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iot/engine/AddRooms;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/AddRooms;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method private addOrEditRoomServer()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userId"

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "roomId"

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    .line 110
    const-string v1, "roomName"

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "roomType"

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "roomImageId"

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->roomImageID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "messageFrom"

    sget-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Internet"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;-><init>(Lcom/iot/engine/AddRooms;Lcom/iot/engine/AddRooms$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void

    .line 113
    :cond_1
    const-string v1, "Localhub"

    goto :goto_0
.end method

.method private getOperation()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/iot/engine/AddRooms;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->operation:Ljava/lang/String;

    .line 141
    const-string v1, "Add Room"

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->strHeader:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->operation:Ljava/lang/String;

    const-string v2, "Edit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "Edit Room"

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->strHeader:Ljava/lang/String;

    .line 145
    const-string v1, "RoomId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/iot/engine/AddRooms;->getRoomInfo(Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v1, "RoomTypeId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    .line 153
    const-string v1, "RoomName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->strRoomName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initialiseControls()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->listRoomType:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->listRoomType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    .line 126
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddRooms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->txtHeading:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddRooms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    .line 128
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddRooms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->btnSave:Landroid/widget/Button;

    .line 129
    const v0, 0x7f0d00ba

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddRooms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    .line 130
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/AddRooms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->imgBack:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->pDialog:Landroid/app/ProgressDialog;

    .line 134
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Kindly wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 136
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->setListeners()V

    .line 137
    return-void
.end method

.method private saveRoom()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "Enter room name"

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isAvailable":I
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->isRoomAvailable(Ljava/lang/String;)I

    move-result v0

    .line 234
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 235
    const-string v2, "Room already exists"

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->isRoomAvailableWithId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 243
    .end local v0    # "isAvailable":I
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v1, "room":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    .line 247
    const-string v2, "RoomName"

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "RoomTypeId"

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->operation:Ljava/lang/String;

    const-string v3, "Edit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, LDatabase/DatabaseHandler;->updateRoom(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->roomImageID:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateRoomImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateSwitchRoomNameByRoomId(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->roomId:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/AddRooms;->mRoomName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateSwitchRoomNameInRecent(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, " Updated Successfully"

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/iot/engine/AddRooms;->finish()V

    goto/16 :goto_0

    .line 259
    :cond_3
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->addOrEditRoomServer()V

    goto/16 :goto_0

    .line 263
    :cond_4
    const-string v2, "Check internet connection!!!"

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    iget-object v2, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iot/engine/AddRooms;->txtType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Added Successfully"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/iot/engine/AddRooms;->finish()V

    goto/16 :goto_0

    .line 275
    :cond_6
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 276
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->addOrEditRoomServer()V

    goto/16 :goto_0

    .line 279
    :cond_7
    const-string v2, "Check internet connection!!!"

    invoke-static {p0, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private setPreselectedText()V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->listRoomType:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->listRoomType:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "RoomTypeId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method

.method private setToolbar()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->txtHeading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iot/engine/AddRooms;->strHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getRoomInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, p1}, LDatabase/DatabaseHandler;->getRoom(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 287
    .local v0, "roomInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "RoomTypeId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->roomTypeId:Ljava/lang/String;

    .line 288
    const-string v1, "RoomName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/iot/engine/AddRooms;->strRoomName:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 207
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/AddRooms;->finish()V

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->saveRoom()V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x7f0d00b9 -> :sswitch_1
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v5, 0x7f040024

    invoke-virtual {p0, v5}, Lcom/iot/engine/AddRooms;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->initialiseControls()V

    .line 81
    invoke-virtual {p0}, Lcom/iot/engine/AddRooms;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "RoomName"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "roomname":Ljava/lang/String;
    iget-object v5, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v5, "RoomImageType"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "roomImage":I
    iget-object v5, p0, Lcom/iot/engine/AddRooms;->roomList:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, "mRoomList":Ljava/util/List;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0400b3

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 90
    .local v0, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 96
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->roomImageID:Ljava/lang/String;

    .line 192
    iget-boolean v0, p0, Lcom/iot/engine/AddRooms;->selectionFlag:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->edtRoomName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/AddRooms;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iot/engine/AddRooms;->selectionFlag:Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->getOperation()V

    .line 169
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/iot/engine/AddRooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getRoomType()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/AddRooms;->listRoomType:Ljava/util/ArrayList;

    .line 182
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iot/engine/AddRooms;->setToolbar()V

    .line 183
    return-void

    .line 175
    :cond_1
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const-string v0, "Check internet connection!!!"

    invoke-static {p0, v0}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
