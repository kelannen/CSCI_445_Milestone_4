.class Lcom/iot/engine/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Settings;->initialiseControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Settings;

.field final synthetic val$sessionmanager:LSession/SessionManager;


# direct methods
.method constructor <init>(Lcom/iot/engine/Settings;LSession/SessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iot/engine/Settings$1;->this$0:Lcom/iot/engine/Settings;

    iput-object p2, p0, Lcom/iot/engine/Settings$1;->val$sessionmanager:LSession/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iot/engine/Settings$1;->val$sessionmanager:LSession/SessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LSession/SessionManager;->setBlastFlag(Z)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/Settings$1;->val$sessionmanager:LSession/SessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LSession/SessionManager;->setBlastFlag(Z)V

    goto :goto_0
.end method
