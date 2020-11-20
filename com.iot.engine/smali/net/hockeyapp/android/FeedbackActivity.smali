.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;,
        Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;
    }
.end annotation


# static fields
.field private static final ATTACH_FILE:I = 0x2

.field private static final ATTACH_PICTURE:I = 0x1

.field private static final DIALOG_ERROR_ID:I = 0x0

.field public static final EXTRA_INITIAL_ATTACHMENTS:Ljava/lang/String; = "initialAttachments"

.field public static final EXTRA_INITIAL_USER_EMAIL:Ljava/lang/String; = "initialUserEmail"

.field public static final EXTRA_INITIAL_USER_NAME:Ljava/lang/String; = "initialUserName"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final MAX_ATTACHMENTS_PER_MSG:I = 0x3

.field private static final PAINT_IMAGE:I = 0x3


# instance fields
.field private initialUserEmail:Ljava/lang/String;

.field private initialUserName:Ljava/lang/String;

.field private mAddAttachmentButton:Landroid/widget/Button;

.field private mAddResponseButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEmailInput:Landroid/widget/EditText;

.field private mError:Lnet/hockeyapp/android/objects/ErrorObject;

.field private mFeedbackHandler:Landroid/os/Handler;

.field private mFeedbackMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedbackScrollview:Landroid/widget/ScrollView;

.field private mFeedbackViewInitialized:Z

.field private mInSendFeedback:Z

.field private mInitialAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTextView:Landroid/widget/TextView;

.field private mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

.field private mMessagesListView:Landroid/widget/ListView;

.field private mNameInput:Landroid/widget/EditText;

.field private mParseFeedbackHandler:Landroid/os/Handler;

.field private mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

.field private mRefreshButton:Landroid/widget/Button;

.field private mSendFeedbackButton:Landroid/widget/Button;

.field private mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

.field private mSubjectInput:Landroid/widget/EditText;

.field private mTextInput:Landroid/widget/EditText;

.field private mToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/ErrorObject;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/adapters/MessagesAdapter;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V

    return-void
.end method

.method static synthetic access$700(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method

.method static synthetic access$902(Lnet/hockeyapp/android/FeedbackActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    return p1
.end method

.method private addAttachment(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 567
    if-ne p1, v3, :cond_0

    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_select_file:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 581
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 574
    :cond_0
    if-ne p1, v1, :cond_1

    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_select_picture:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 581
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private configureAppropriateView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 586
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 593
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feedbackResponseString"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, p2}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    .line 604
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 607
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 608
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 609
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 611
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initFeedbackHandler()V
    .locals 1

    .prologue
    .line 617
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    .line 618
    return-void
.end method

.method private initParseFeedbackHandler()V
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackHandler:Landroid/os/Handler;

    .line 625
    return-void
.end method

.method private loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 1
    .param p1, "feedbackResponse"    # Lnet/hockeyapp/android/objects/FeedbackResponse;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method private resetFeedbackView()V
    .locals 1

    .prologue
    .line 679
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 693
    return-void
.end method

.method private sendFeedback()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 699
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_error_no_network_message:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    .line 701
    .local v11, "errorToast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 737
    .end local v11    # "errorToast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 706
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->hideKeyboard()V

    .line 708
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "token":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "email":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, "subject":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_subject_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_name_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 720
    :cond_2
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_email_empty:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    .line 722
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_text_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    .line 724
    :cond_4
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_5

    invoke-static {v3}, Lnet/hockeyapp/android/utils/Util;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 725
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_email_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    .line 728
    :cond_5
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveNameEmailSubjectToPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 732
    .local v10, "attachmentListView":Lnet/hockeyapp/android/views/AttachmentListView;
    invoke-virtual {v10}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v6

    .line 735
    .local v6, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto/16 :goto_0
.end method

.method private sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "feedbackHandler"    # Landroid/os/Handler;
    .param p9, "isFetchMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p6, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .line 758
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 759
    return-void
.end method

.method private setError(Landroid/widget/EditText;I)V
    .locals 1
    .param p1, "inputField"    # Landroid/widget/EditText;
    .param p2, "feedbackStringId"    # I

    .prologue
    .line 740
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 741
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 742
    return-void
.end method

.method private startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "feedbackResponseString"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 769
    return-void
.end method


# virtual methods
.method protected configureFeedbackView(Z)V
    .locals 10
    .param p1, "haveToken"    # Z

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 460
    sget v4, Lnet/hockeyapp/android/R$id;->wrapper_feedback_scroll:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    .line 461
    sget v4, Lnet/hockeyapp/android/R$id;->wrapper_messages:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    .line 462
    sget v4, Lnet/hockeyapp/android/R$id;->list_feedback_messages:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesListView:Landroid/widget/ListView;

    .line 464
    if-eqz p1, :cond_0

    .line 466
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 469
    sget v4, Lnet/hockeyapp/android/R$id;->label_last_updated:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    .line 470
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    sget v4, Lnet/hockeyapp/android/R$id;->button_add_response:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddResponseButton:Landroid/widget/Button;

    .line 473
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddResponseButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    sget v4, Lnet/hockeyapp/android/R$id;->button_refresh:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mRefreshButton:Landroid/widget/Button;

    .line 476
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 482
    sget v4, Lnet/hockeyapp/android/R$id;->input_name:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    .line 483
    sget v4, Lnet/hockeyapp/android/R$id;->input_email:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    .line 484
    sget v4, Lnet/hockeyapp/android/R$id;->input_subject:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    .line 485
    sget v4, Lnet/hockeyapp/android/R$id;->input_message:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    .line 488
    iget-boolean v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    if-nez v4, :cond_2

    .line 489
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/utils/PrefsUtil;->getNameEmailFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "nameEmailSubject":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 492
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "nameEmailSubjectArray":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v9, :cond_1

    .line 494
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 498
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    aget-object v5, v3, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 518
    .end local v3    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    .line 522
    .end local v2    # "nameEmailSubject":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 527
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 534
    :goto_2
    sget v4, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 535
    .local v0, "attachmentListView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 537
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 538
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 539
    .local v1, "attachmentUri":Landroid/net/Uri;
    new-instance v5, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v5, p0, v0, v1, v7}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 501
    .end local v0    # "attachmentListView":Landroid/view/ViewGroup;
    .end local v1    # "attachmentUri":Landroid/net/Uri;
    .restart local v2    # "nameEmailSubject":Ljava/lang/String;
    .restart local v3    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 506
    .end local v3    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 510
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 511
    :cond_5
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 512
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 514
    :cond_6
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 530
    .end local v2    # "nameEmailSubject":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 544
    .restart local v0    # "attachmentListView":Landroid/view/ViewGroup;
    :cond_8
    sget v4, Lnet/hockeyapp/android/R$id;->button_attachment:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    .line 545
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 548
    sget v4, Lnet/hockeyapp/android/R$id;->button_send:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    .line 549
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public enableDisableSendFeedbackButton(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    :cond_0
    return-void
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$layout;->hockeyapp_activity_feedback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 396
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 402
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 405
    sget v4, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    .local v0, "attachments":Landroid/view/ViewGroup;
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v4, p0, v0, v3, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 409
    .end local v0    # "attachments":Landroid/view/ViewGroup;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    if-ne p1, v5, :cond_3

    .line 411
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 414
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 416
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "imageUri"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "HockeyApp"

    const-string v5, "Paint activity not declared!"

    invoke-static {v4, v5, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 425
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    if-ne p1, v6, :cond_0

    .line 427
    const-string v4, "imageUri"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 429
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 430
    sget v4, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 431
    .restart local v0    # "attachments":Landroid/view/ViewGroup;
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v4, p0, v0, v3, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    .line 308
    .local v11, "viewId":I
    sget v0, Lnet/hockeyapp/android/R$id;->button_send:I

    if-ne v11, v0, :cond_1

    .line 309
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedback()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget v0, Lnet/hockeyapp/android/R$id;->button_attachment:I

    if-ne v11, v0, :cond_3

    .line 311
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 312
    .local v10, "attachments":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 314
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 318
    .end local v10    # "attachments":Landroid/view/ViewGroup;
    :cond_3
    sget v0, Lnet/hockeyapp/android/R$id;->button_add_response:I

    if-ne v11, v0, :cond_4

    .line 319
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 320
    iput-boolean v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    goto :goto_0

    .line 321
    :cond_4
    sget v0, Lnet/hockeyapp/android/R$id;->button_refresh:I

    if-ne v11, v0, :cond_0

    .line 322
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 345
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->addAttachment(I)Z

    move-result v0

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 190
    sget v4, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_title:I

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 195
    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    .line 196
    const-string v4, "initialUserName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    .line 197
    const-string v4, "initialUserEmail"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    .line 199
    const-string v4, "initialAttachments"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 200
    .local v1, "initialAttachmentsArray":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    .line 202
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v1, v4

    .line 203
    .local v3, "parcelable":Landroid/os/Parcelable;
    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    check-cast v3, Landroid/net/Uri;

    .end local v3    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "initialAttachmentsArray":[Landroid/os/Parcelable;
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    const-string v4, "feedbackViewInitialized"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    .line 210
    const-string v4, "inSendFeedback"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 217
    :goto_1
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 218
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 220
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initFeedbackHandler()V

    .line 221
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initParseFeedbackHandler()V

    .line 222
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 223
    return-void

    .line 212
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    iput-boolean v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 213
    iput-boolean v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 333
    const/4 v0, 0x2

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attach_file:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 334
    const/4 v0, 0x1

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attach_picture:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 335
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 356
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_error_message:I

    .line 357
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_error_title:I

    .line 359
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_positive_button:I

    .line 361
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 287
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 289
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 294
    :goto_0
    const/4 v0, 0x1

    .line 297
    :goto_1
    return v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 374
    packed-switch p1, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 376
    check-cast v0, Landroid/app/AlertDialog;

    .line 377
    .local v0, "messageDialogError":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 382
    :cond_0
    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_generic_error:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    if-eqz p1, :cond_2

    .line 231
    sget v3, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "attachmentList":Landroid/view/ViewGroup;
    const-string v3, "attachments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 233
    .local v2, "attachmentsUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 234
    .local v1, "attachmentUri":Landroid/net/Uri;
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v1, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 239
    .end local v1    # "attachmentUri":Landroid/net/Uri;
    :cond_1
    const-string v3, "feedbackViewInitialized"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    .line 242
    .end local v0    # "attachmentList":Landroid/view/ViewGroup;
    .end local v2    # "attachmentsUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    .line 281
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    sget v1, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 252
    .local v0, "attachmentListView":Lnet/hockeyapp/android/views/AttachmentListView;
    const-string v1, "attachments"

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v1, "feedbackViewInitialized"

    iget-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v1, "inSendFeedback"

    iget-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method protected onSendFeedbackResult(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 559
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 263
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    .line 266
    :cond_0
    return-void
.end method
