.class Lcom/iot/engine/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Register;->initialseControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Register;


# direct methods
.method constructor <init>(Lcom/iot/engine/Register;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Register;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    iget-object v2, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    iget-object v2, v2, Lcom/iot/engine/Register;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    iget-object v3, v3, Lcom/iot/engine/Register;->myCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    .line 77
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    iget-object v4, v4, Lcom/iot/engine/Register;->myCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/iot/engine/Register$1;->this$0:Lcom/iot/engine/Register;

    iget-object v5, v5, Lcom/iot/engine/Register;->myCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    .line 78
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 79
    return-void
.end method
