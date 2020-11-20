.class Lcom/iot/engine/RouterSetting$1;
.super Ljava/lang/Object;
.source "RouterSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/RouterSetting;->buildAlertMessageNoGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/RouterSetting;


# direct methods
.method constructor <init>(Lcom/iot/engine/RouterSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/RouterSetting;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/iot/engine/RouterSetting$1;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 142
    iget-object v0, p0, Lcom/iot/engine/RouterSetting$1;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-virtual {v0}, Lcom/iot/engine/RouterSetting;->finish()V

    .line 143
    return-void
.end method
