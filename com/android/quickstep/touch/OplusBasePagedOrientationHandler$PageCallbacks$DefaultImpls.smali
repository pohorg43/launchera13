.class public final Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V
    .registers 3

    const-string/jumbo p2, "this"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scrollState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
