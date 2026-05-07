.class public final synthetic Lcom/android/wm/shell/bubbles/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 21

    move-object v0, p0

    iget v1, v0, Lcom/android/wm/shell/bubbles/g0;->a:I

    packed-switch v1, :pswitch_data_4c

    goto :goto_35

    :pswitch_7  #0x1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->d(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->G(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;IIIIIIII)V

    return-void

    :goto_35
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/g0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/PopupWindow;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->a(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_7  #00000001
    .end packed-switch
.end method
