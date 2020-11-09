.class Lcom/iot/engine/SetPasscode$12;
.super Ljava/lang/Object;
.source "SetPasscode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/SetPasscode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SetPasscode;


# direct methods
.method constructor <init>(Lcom/iot/engine/SetPasscode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/iot/engine/SetPasscode$12;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/iot/engine/SetPasscode$12;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-virtual {v0}, Lcom/iot/engine/SetPasscode;->finish()V

    .line 235
    return-void
.end method
