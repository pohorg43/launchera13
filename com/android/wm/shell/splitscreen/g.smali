.class public final synthetic Lcom/android/wm/shell/splitscreen/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/splitscreen/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/g;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/g;-><init>()V

    sput-object v0, Lcom/android/wm/shell/splitscreen/g;->a:Lcom/android/wm/shell/splitscreen/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    check-cast p2, Landroid/view/RemoteAnimationTarget;

    invoke-static {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->a(Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method
