.class public final Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;
.super Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lcom/android/launcher3/taskbar/u;->i:Lcom/android/launcher3/taskbar/u;

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final _init_$lambda-0(Ljava/lang/Boolean;)V
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Boolean;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;->_init_$lambda-0(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "TYPE_STUDY_MODE"

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/high16 p0, 0x2000000

    return p0
.end method
