.class final Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/launcher3/card/utils/CardLoadChecker;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/card/utils/CardLoadChecker;
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/utils/CardLoadChecker;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/utils/CardLoadChecker;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;->invoke()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object p0

    return-object p0
.end method
