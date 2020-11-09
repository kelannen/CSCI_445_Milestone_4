.class LAdapter/TryDemoSwitchAdpater$LongOperation$1;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/TryDemoSwitchAdpater$LongOperation;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LAdapter/TryDemoSwitchAdpater$LongOperation;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(LAdapter/TryDemoSwitchAdpater$LongOperation;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # LAdapter/TryDemoSwitchAdpater$LongOperation;

    .prologue
    .line 327
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$LongOperation$1;->this$1:LAdapter/TryDemoSwitchAdpater$LongOperation;

    iput-object p2, p0, LAdapter/TryDemoSwitchAdpater$LongOperation$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$LongOperation$1;->this$1:LAdapter/TryDemoSwitchAdpater$LongOperation;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$LongOperation$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    return-void
.end method
