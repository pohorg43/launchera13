.class public final Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;
.super Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusAssistantInputConsumer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WHATSAPP_COMPONENT:Ljava/lang/String; = "com.whatsapp/com.whatsapp.Conversation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mAngleThresholdMax:I

.field private final mAngleThresholdMin:I

.field private final mIsLimitAngleThreshold:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->Companion:Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0006

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mAngleThresholdMin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0005

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mAngleThresholdMax:I

    const/4 p1, 0x0

    if-nez p2, :cond_26

    goto :goto_3d

    :cond_26
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p2

    if-nez p2, :cond_2d

    goto :goto_3d

    :cond_2d
    invoke-virtual {p2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-nez p2, :cond_34

    goto :goto_3d

    :cond_34
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    :goto_3d
    const-string p2, "com.whatsapp/com.whatsapp.Conversation"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mIsLimitAngleThreshold:Z

    return-void
.end method


# virtual methods
.method public isValidAssistantGestureAngle(FF)Z
    .registers 7

    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "isValidAssistantGestureAngle angle = "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusAssistantInputConsumer"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mIsLimitAngleThreshold:Z

    if-eqz v2, :cond_2f

    iget p1, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mAngleThresholdMin:I

    int-to-double p1, p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_2d

    iget p0, p0, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;->mAngleThresholdMax:I

    int-to-double p0, p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_33

    :cond_2d
    const/4 p0, 0x0

    goto :goto_33

    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->isValidAssistantGestureAngle(FF)Z

    move-result p0

    :goto_33
    return p0
.end method

.method public setActive(Landroid/view/MotionEvent;)V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    return-void
.end method
