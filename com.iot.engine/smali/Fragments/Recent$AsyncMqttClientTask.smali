.class LFragments/Recent$AsyncMqttClientTask;
.super Landroid/os/AsyncTask;
.source "Recent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Recent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncMqttClientTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Recent;


# direct methods
.method constructor <init>(LFragments/Recent;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Recent;

    .prologue
    .line 141
    iput-object p1, p0, LFragments/Recent$AsyncMqttClientTask;->this$0:LFragments/Recent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LFragments/Recent$AsyncMqttClientTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 144
    iget-object v0, p0, LFragments/Recent$AsyncMqttClientTask;->this$0:LFragments/Recent;

    invoke-static {v0}, LFragments/Recent;->access$000(LFragments/Recent;)V

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method
