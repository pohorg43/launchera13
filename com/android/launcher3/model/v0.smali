.class public final synthetic Lcom/android/launcher3/model/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/v0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/v0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->d(Lcom/android/launcher3/model/QuickstepModelDelegate;ILjava/util/List;)I

    move-result p0

    return p0
.end method
