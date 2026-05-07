.class public final Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;
.super Lcom/oplus/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "startSearchAct"

    invoke-direct {p0, v0}, Lcom/oplus/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;)F
    .registers 2

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->access$getMSpringProgress$p(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;->getValue(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;F)V
    .registers 3

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->access$onUpdate(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;->setValue(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;F)V

    return-void
.end method
