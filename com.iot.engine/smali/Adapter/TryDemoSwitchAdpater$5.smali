.class LAdapter/TryDemoSwitchAdpater$5;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/TryDemoSwitchAdpater;->setSwitchOn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/TryDemoSwitchAdpater;


# direct methods
.method constructor <init>(LAdapter/TryDemoSwitchAdpater;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/TryDemoSwitchAdpater;

    .prologue
    .line 349
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$5;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$5;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    const-string v1, "Kindly try again."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    return-void
.end method
