.class public final Lcom/android/launcher3/icons/touch/TouchEventResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/icons/touch/TouchEventResult;


# instance fields
.field private mHandled:Z

.field private mInterceptBubbleTextViewSuperMethod:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/touch/TouchEventResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/touch/TouchEventResult;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->INSTANCE:Lcom/android/launcher3/icons/touch/TouchEventResult;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mHandled:Z

    return-void
.end method

.method public static get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    sget-object v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->INSTANCE:Lcom/android/launcher3/icons/touch/TouchEventResult;

    iput-boolean p0, v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mHandled:Z

    return-object v0
.end method

.method public static reset()Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->resetTo(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object v0

    return-object v0
.end method

.method public static resetTo(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 2

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    sget-object v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->INSTANCE:Lcom/android/launcher3/icons/touch/TouchEventResult;

    iput-boolean p0, v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mHandled:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mInterceptBubbleTextViewSuperMethod:Z

    return-object v0
.end method


# virtual methods
.method public interceptBubbleTextViewSuperMethod()Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mInterceptBubbleTextViewSuperMethod:Z

    return-object p0
.end method

.method public isHandled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mHandled:Z

    return p0
.end method

.method public isInterceptBubbleTextViewSuperMethod()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/touch/TouchEventResult;->mInterceptBubbleTextViewSuperMethod:Z

    return p0
.end method
