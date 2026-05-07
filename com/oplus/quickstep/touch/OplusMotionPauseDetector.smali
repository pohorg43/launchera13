.class public final Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$Companion;

.field private static final DBG:Z = false

.field private static final RAPID_DECELERATION_FACTOR:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "OplusMotionPauseDetector"


# instance fields
.field private firstPosition:Ljava/lang/Float;

.field private final forcePauseTimeout:Lcom/android/launcher3/Alarm;

.field private hasEverBeenPaused:Z

.field private isPaused:Z

.field private final minPauseDisplacement:I

.field private onMotionPauseListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private previousPosition:Ljava/lang/Float;

.field private previousTime:Ljava/lang/Long;

.field private previousVelocity:Ljava/lang/Float;

.field private final slowSpeedTimeOut:J

.field private slowStartTime:J

.field private final speedFast:F

.field private final speedSlow:F

.field private final speedSomeWhatFast:F

.field private final speedVerySlow:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->Companion:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->minPauseDisplacement:I

    iput-wide p3, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->slowSpeedTimeOut:J

    sget-object p2, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$onMotionPauseListener$1;->INSTANCE:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$onMotionPauseListener$1;

    iput-object p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->onMotionPauseListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070877

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedVerySlow:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070875

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedSlow:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070876

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedSomeWhatFast:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070874

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedFast:F

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->forcePauseTimeout:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher/folder/download/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/download/a;-><init>(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;Lcom/android/launcher3/Alarm;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->_init_$lambda-0(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private final checkMinDisplacementReached(F)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->minPauseDisplacement:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private final checkMotionPaused(FFJ)Z
    .registers 8

    const-string v0, "checkMotionPaused: velocity = "

    const-string v1, ", prevVelocity = "

    const-string v2, ", time = "

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", isPaused = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OplusMotionPauseDetector"

    invoke-static {p4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget-boolean v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    iget p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedFast:F

    cmpg-float p1, p3, p0

    if-ltz p1, :cond_73

    cmpg-float p0, p4, p0

    if-gez p0, :cond_72

    goto :goto_73

    :cond_39
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_40

    move p1, v1

    goto :goto_41

    :cond_40
    move p1, v2

    :goto_41
    cmpg-float p2, p2, v0

    if-gez p2, :cond_47

    move p2, v1

    goto :goto_48

    :cond_47
    move p2, v2

    :goto_48
    if-eq p1, p2, :cond_4b

    goto :goto_76

    :cond_4b
    iget p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedVerySlow:F

    cmpg-float p2, p3, p1

    if-gez p2, :cond_57

    cmpg-float p1, p4, p1

    if-gez p1, :cond_57

    move p1, v1

    goto :goto_58

    :cond_57
    move p1, v2

    :goto_58
    if-nez p1, :cond_75

    iget-boolean p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->hasEverBeenPaused:Z

    if-nez p2, :cond_75

    const p1, 0x3f19999a  # 0.6f

    mul-float/2addr p4, p1

    cmpg-float p1, p3, p4

    if-gez p1, :cond_68

    move p1, v1

    goto :goto_69

    :cond_68
    move p1, v2

    :goto_69
    if-eqz p1, :cond_72

    iget p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->speedSomeWhatFast:F

    cmpg-float p0, p3, p0

    if-gez p0, :cond_72

    goto :goto_73

    :cond_72
    move v1, v2

    :cond_73
    :goto_73
    move v2, v1

    goto :goto_76

    :cond_75
    move v2, p1

    :goto_76
    return v2
.end method

.method private final updatePaused(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    if-eq p1, v0, :cond_1d

    iput-boolean p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->hasEverBeenPaused:Z

    :cond_b
    const-string v0, "updatePaused: isPaused = "

    const-string v1, "OplusMotionPauseDetector"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->onMotionPauseListener:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method


# virtual methods
.method public final addPosition(FJ)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->firstPosition:Ljava/lang/Float;

    if-nez v0, :cond_a

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->firstPosition:Ljava/lang/Float;

    :cond_a
    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->forcePauseTimeout:Lcom/android/launcher3/Alarm;

    iget-wide v1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->slowSpeedTimeOut:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousTime:Ljava/lang/Long;

    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousPosition:Ljava/lang/Float;

    if-eqz v1, :cond_5d

    const-wide/16 v1, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousPosition:Ljava/lang/Float;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, p1, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    if-nez v0, :cond_3a

    goto :goto_57

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->checkMinDisplacementReached(F)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->checkMotionPaused(FFJ)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-nez v0, :cond_54

    iget-object v1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->forcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_54
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->updatePaused(Z)V

    :goto_57
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    :cond_5d
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousTime:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousPosition:Ljava/lang/Float;

    return-void
.end method

.method public final clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousPosition:Ljava/lang/Float;

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->firstPosition:Ljava/lang/Float;

    sget-object v0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$clear$1;->INSTANCE:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector$clear$1;

    iput-object v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->onMotionPauseListener:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->hasEverBeenPaused:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->slowStartTime:J

    iget-object p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->forcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public final getOnMotionPauseListener()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->onMotionPauseListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isPaused()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    return p0
.end method

.method public final setOnMotionPauseListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->onMotionPauseListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPaused(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->isPaused:Z

    return-void
.end method
