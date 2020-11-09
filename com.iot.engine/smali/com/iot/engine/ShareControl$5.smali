.class Lcom/iot/engine/ShareControl$5;
.super Ljava/lang/Object;
.source "ShareControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ShareControl;->ParseShareResponse(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ShareControl;

.field final synthetic val$dialogs:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iot/engine/ShareControl;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/iot/engine/ShareControl$5;->this$0:Lcom/iot/engine/ShareControl;

    iput-object p2, p0, Lcom/iot/engine/ShareControl$5;->val$dialogs:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/iot/engine/ShareControl$5;->val$dialogs:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    return-void
.end method
