.class public final synthetic Lcom/android/launcher3/util/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/k;->a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/util/k;->a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->a(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
