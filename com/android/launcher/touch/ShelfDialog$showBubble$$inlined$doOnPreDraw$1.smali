.class public final Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/ShelfDialog;->showBubble(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $launcher$inlined:Lcom/android/launcher/Launcher;

.field public final synthetic $this_doOnPreDraw:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v2, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120424

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/launcher/touch/ShelfDialog$showBubble$1$1$1;

    iget-object p0, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    invoke-direct {v3, p0}, Lcom/android/launcher/touch/ShelfDialog$showBubble$1$1$1;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/launcher/touch/ShelfDialog;->getMGuideAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    const/4 v3, 0x4

    invoke-virtual {v1, p0, v3, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/ShelfDialog;->setMCOUIToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method
