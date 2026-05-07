.class Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotAlpha([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$2;->this$0:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$2;->this$0:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->access$102(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
