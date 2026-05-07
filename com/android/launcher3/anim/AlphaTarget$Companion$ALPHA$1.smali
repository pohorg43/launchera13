.class public final Lcom/android/launcher3/anim/AlphaTarget$Companion$ALPHA$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AlphaTarget;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/anim/AlphaTarget;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "alpha"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/anim/AlphaTarget;)Ljava/lang/Float;
    .registers 2

    const-string/jumbo p0, "object"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaTarget;->access$getAlpha(Lcom/android/launcher3/anim/AlphaTarget;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/anim/AlphaTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AlphaTarget$Companion$ALPHA$1;->get(Lcom/android/launcher3/anim/AlphaTarget;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/anim/AlphaTarget;F)V
    .registers 3

    const-string/jumbo p0, "object"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/anim/AlphaTarget;->access$setAlpha(Lcom/android/launcher3/anim/AlphaTarget;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/anim/AlphaTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/AlphaTarget$Companion$ALPHA$1;->setValue(Lcom/android/launcher3/anim/AlphaTarget;F)V

    return-void
.end method
