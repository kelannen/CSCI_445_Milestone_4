.class Lcom/iot/engine/RouterSetting$2;
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
    .line 134
    iput-object p1, p0, Lcom/iot/engine/RouterSetting$2;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iot/engine/RouterSetting$2;->this$0:Lcom/iot/engine/RouterSetting;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iot/engine/RouterSetting;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method
