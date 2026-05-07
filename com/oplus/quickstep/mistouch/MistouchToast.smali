.class public final Lcom/oplus/quickstep/mistouch/MistouchToast;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/MistouchToast$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/mistouch/MistouchToast$Companion;

.field private static final ENABLE_COUNTER:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_EXIT_TIMES:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SP_KEY_EXIT_TIMES_AFTER_TOAST_SHOW:Ljava/lang/String; = "exit_times_after_toast_show_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SP_NAME:Ljava/lang/String; = "sp_mistouch_toast"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LMistouchToast"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExitTimesKey:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mNeedRecord:Z

.field private final mSharedPreferences$delegate:Ly2/e;

.field private final mTask$delegate:Ly2/e;

.field private mToast:Landroid/widget/Toast;

.field private needRecordShowTimes:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/MistouchToast$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/MistouchToast$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchToast;->Companion:Lcom/oplus/quickstep/mistouch/MistouchToast$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .registers 5

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mNeedRecord:Z

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance p2, Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;-><init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mSharedPreferences$delegate:Ly2/e;

    new-instance p2, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;-><init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mTask$delegate:Ly2/e;

    const-string p1, "exit_times_after_toast_show_"

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mExitTimesKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/mistouch/MistouchToast;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    return-void
.end method

.method public static final synthetic access$getMNeedRecord$p(Lcom/oplus/quickstep/mistouch/MistouchToast;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mNeedRecord:Z

    return p0
.end method

.method public static final synthetic access$getMToast$p(Lcom/oplus/quickstep/mistouch/MistouchToast;)Landroid/widget/Toast;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static final synthetic access$setMToast$p(Lcom/oplus/quickstep/mistouch/MistouchToast;Landroid/widget/Toast;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private final exitTimes()I
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMExitTimesKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final getMExitTimesKey()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mExitTimesKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getMSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mSharedPreferences$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mSharedPreferences>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final getMTask()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mTask$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :goto_8
    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMTask()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getNeedRecordShowTimes()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->needRecordShowTimes:Z

    return p0
.end method

.method public final increaseTimes()V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->needRecordShowTimes:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mNeedRecord:Z

    if-nez v0, :cond_9

    goto :goto_48

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->needRecordShowTimes:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->exitTimes()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    return-void

    :cond_14
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMExitTimesKey()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increaseTimes(), spKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "LMistouchToast"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_48
    :goto_48
    return-void
.end method

.method public final setNeedRecordShowTimes(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->needRecordShowTimes:Z

    return-void
.end method

.method public final show()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mNeedRecord:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->exitTimes()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMTask()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
