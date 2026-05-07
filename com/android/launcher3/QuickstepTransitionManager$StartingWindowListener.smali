.class Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;
.super Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartingWindowListener"
.end annotation


# instance fields
.field private mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskLaunching(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->access$600(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    return-void
.end method
