.class Lcom/iot/engine/Login$6;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Login;->AlertDeviceAlreadyPresent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Login;

.field final synthetic val$dialogDeviceID:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iot/engine/Login;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Login;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/iot/engine/Login$6;->this$0:Lcom/iot/engine/Login;

    iput-object p2, p0, Lcom/iot/engine/Login$6;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/iot/engine/Login$6;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 437
    return-void
.end method
