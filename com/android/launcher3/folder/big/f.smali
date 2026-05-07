.class public final synthetic Lcom/android/launcher3/folder/big/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/f;->a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/f;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/android/launcher3/folder/big/f;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/big/f;->a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/f;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, p0, Lcom/android/launcher3/folder/big/f;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->b(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
