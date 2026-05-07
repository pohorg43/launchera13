.class public final synthetic Lcom/android/launcher/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderExtImplV2;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 6

    iget v0, p0, Lcom/android/launcher/w;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->e(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->a(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/FolderExtImplV2;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/FolderExtImplV2;->a(Lcom/android/launcher3/folder/FolderExtImplV2;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->T(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->b(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
