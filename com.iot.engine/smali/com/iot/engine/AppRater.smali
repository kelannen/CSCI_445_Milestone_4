.class public Lcom/iot/engine/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# static fields
.field private static final APP_PNAME:Ljava/lang/String; = "com.iot.engine"

.field private static final APP_TITLE:Ljava/lang/String; = "Pongo Home"

.field private static final DAYS_UNTIL_PROMPT:I = 0x7

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app_launched(Landroid/content/Context;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 25
    const-string v5, "apprater"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 26
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "dontshowagain"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 34
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "launch_count"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long v2, v6, v10

    .line 35
    .local v2, "launch_count":J
    const-string v5, "launch_count"

    invoke-interface {v1, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v5, "date_firstlaunch"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 39
    .local v0, "date_firstLaunch":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 41
    const-string v5, "date_firstlaunch"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    :cond_1
    cmp-long v5, v2, v10

    if-ltz v5, :cond_2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 50
    invoke-static {p0, v1}, Lcom/iot/engine/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 53
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 57
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 59
    const v4, 0x7f04008f

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 61
    const v4, 0x7f0d01e2

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "txtRate":Landroid/widget/TextView;
    const v4, 0x7f0d020f

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "txtRemind":Landroid/widget/TextView;
    const v4, 0x7f0d0210

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "txtNoThanks":Landroid/widget/TextView;
    new-instance v4, Lcom/iot/engine/AppRater$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/iot/engine/AppRater$1;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v4, Lcom/iot/engine/AppRater$2;

    invoke-direct {v4, v0}, Lcom/iot/engine/AppRater$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v4, Lcom/iot/engine/AppRater$3;

    invoke-direct {v4, v0, p1}, Lcom/iot/engine/AppRater$3;-><init>(Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 155
    return-void
.end method
