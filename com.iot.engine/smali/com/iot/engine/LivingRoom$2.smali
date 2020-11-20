.class Lcom/iot/engine/LivingRoom$2;
.super Ljava/lang/Object;
.source "LivingRoom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/LivingRoom;->ALertDialogHideOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/LivingRoom;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mapList:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/LivingRoom;Landroid/app/Dialog;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$2;->this$0:Lcom/iot/engine/LivingRoom;

    iput-object p2, p0, Lcom/iot/engine/LivingRoom$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/iot/engine/LivingRoom$2;->val$mapList:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 470
    new-instance v0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;

    iget-object v1, p0, Lcom/iot/engine/LivingRoom$2;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom$2;->val$mapList:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/iot/engine/LivingRoom$AsyncHideOperation;-><init>(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    return-void
.end method
