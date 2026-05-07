.class public Lcom/android/quickstep/util/SplitScreenBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;


# instance fields
.field private mBounds:Lcom/android/launcher3/util/WindowBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-direct {v0}, Lcom/android/quickstep/util/SplitScreenBounds;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private static createDefaultWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;
    .registers 8

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/WindowBounds;->fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07093a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x2

    div-int/2addr p0, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    if-ne v1, v2, :cond_31

    goto :goto_43

    :cond_31
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v2

    add-int/2addr v6, v5

    add-int/2addr v6, p0

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    goto :goto_54

    :cond_43
    :goto_43
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v2

    add-int/2addr v6, v5

    add-int/2addr v6, p0

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    :goto_54
    new-instance p0, Lcom/android/launcher3/util/WindowBounds;

    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/android/quickstep/util/SplitScreenBounds;->createDefaultWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    :cond_a
    iget-object p0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    return-object p0
.end method

.method public isLauncherOnFirstScreen(Landroid/content/Context;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 p2, 0x1

    if-nez p1, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_2c

    :goto_1e
    move v0, p2

    goto :goto_2c

    :cond_20
    if-eq p1, p2, :cond_25

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2c

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_2c

    goto :goto_1e

    :cond_2c
    :goto_2c
    return v0
.end method

.method public removeOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSecondaryWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V
    .registers 3
    .param p1  # Lcom/android/launcher3/util/WindowBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iput-object p1, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    iget-object p0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;

    invoke-interface {p1}, Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;->onSecondaryWindowBoundsChanged()V

    goto :goto_10

    :cond_20
    return-void
.end method
