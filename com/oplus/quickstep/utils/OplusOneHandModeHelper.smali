.class public final Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;

.field private static final TAG:Ljava/lang/String; = "OplusOneHandModeHelper"

.field public static final oneHandModeRegion:Landroid/graphics/RectF;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->oneHandModeRegion:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canTriggerOneHandedAction(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    const-string v0, "canTriggerOneHandedAction: region = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->oneHandModeRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v2, "Common"

    const-string v3, "OplusOneHandModeHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_42

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq p0, v0, :cond_42

    const/4 p1, 0x3

    if-eq p0, p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0
.end method

.method private static final touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->oneHandModeRegion:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method
