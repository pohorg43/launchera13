.class public final synthetic Lf0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# static fields
.field public static final synthetic a:Lf0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lf0/a;

    invoke-direct {v0}, Lf0/a;-><init>()V

    sput-object v0, Lf0/a;->a:Lf0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->d(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
