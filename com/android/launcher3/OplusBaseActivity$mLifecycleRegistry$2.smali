.class final Lcom/android/launcher3/OplusBaseActivity$mLifecycleRegistry$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusBaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/LifecycleRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBaseActivity$mLifecycleRegistry$2;->this$0:Lcom/android/launcher3/OplusBaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LifecycleRegistry;
    .registers 2

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity$mLifecycleRegistry$2;->this$0:Lcom/android/launcher3/OplusBaseActivity;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity$mLifecycleRegistry$2;->invoke()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method
