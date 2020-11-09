.class Lcom/iot/engine/UserProfileNew$2;
.super Ljava/lang/Object;
.source "UserProfileNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserProfileNew;->selectImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/UserProfileNew;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfileNew;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    iput-object p2, p0, Lcom/iot/engine/UserProfileNew$2;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 285
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v1}, LSession/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    .line 287
    .local v0, "result":Z
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    const-string v2, "Camera"

    invoke-static {v1, v2}, Lcom/iot/engine/UserProfileNew;->access$202(Lcom/iot/engine/UserProfileNew;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v1}, Lcom/iot/engine/UserProfileNew;->access$300(Lcom/iot/engine/UserProfileNew;)V

    .line 299
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Gallery"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v1}, LSession/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    .line 293
    .restart local v0    # "result":Z
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    const-string v2, "Gallery"

    invoke-static {v1, v2}, Lcom/iot/engine/UserProfileNew;->access$202(Lcom/iot/engine/UserProfileNew;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v1}, Lcom/iot/engine/UserProfileNew;->access$400(Lcom/iot/engine/UserProfileNew;)V

    goto :goto_0

    .line 296
    .end local v0    # "result":Z
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
