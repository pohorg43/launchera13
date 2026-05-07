.class public final synthetic Lcom/android/wm/shell/pip/phone/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/graphics/Region;

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:J

.field public final synthetic k:Landroid/view/MagnificationSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .registers 14

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/pip/phone/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/d;->b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iput-wide p2, p0, Lcom/android/wm/shell/pip/phone/d;->c:J

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/d;->e:Landroid/graphics/Region;

    iput p5, p0, Lcom/android/wm/shell/pip/phone/d;->f:I

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/d;->g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p7, p0, Lcom/android/wm/shell/pip/phone/d;->h:I

    iput p8, p0, Lcom/android/wm/shell/pip/phone/d;->i:I

    iput-wide p9, p0, Lcom/android/wm/shell/pip/phone/d;->j:J

    iput-object p11, p0, Lcom/android/wm/shell/pip/phone/d;->k:Landroid/view/MagnificationSpec;

    iput-object p12, p0, Lcom/android/wm/shell/pip/phone/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;I)V
    .registers 14

    iput p13, p0, Lcom/android/wm/shell/pip/phone/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/d;->b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iput-wide p2, p0, Lcom/android/wm/shell/pip/phone/d;->c:J

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/d;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/d;->e:Landroid/graphics/Region;

    iput p6, p0, Lcom/android/wm/shell/pip/phone/d;->f:I

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/d;->g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p8, p0, Lcom/android/wm/shell/pip/phone/d;->h:I

    iput p9, p0, Lcom/android/wm/shell/pip/phone/d;->i:I

    iput-wide p10, p0, Lcom/android/wm/shell/pip/phone/d;->j:J

    iput-object p12, p0, Lcom/android/wm/shell/pip/phone/d;->k:Landroid/view/MagnificationSpec;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 31

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/pip/phone/d;->a:I

    packed-switch v1, :pswitch_data_7c

    goto :goto_4e

    :pswitch_8  #0x1
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/d;->b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iget-wide v3, v0, Lcom/android/wm/shell/pip/phone/d;->c:J

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/d;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/d;->e:Landroid/graphics/Region;

    iget v7, v0, Lcom/android/wm/shell/pip/phone/d;->f:I

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/d;->g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v9, v0, Lcom/android/wm/shell/pip/phone/d;->h:I

    iget v10, v0, Lcom/android/wm/shell/pip/phone/d;->i:I

    iget-wide v11, v0, Lcom/android/wm/shell/pip/phone/d;->j:J

    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/d;->k:Landroid/view/MagnificationSpec;

    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->a(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    return-void

    :pswitch_23  #0x0
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/d;->b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iget-wide v1, v0, Lcom/android/wm/shell/pip/phone/d;->c:J

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/d;->d:Ljava/lang/Object;

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/d;->e:Landroid/graphics/Region;

    iget v4, v0, Lcom/android/wm/shell/pip/phone/d;->f:I

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/d;->g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v6, v0, Lcom/android/wm/shell/pip/phone/d;->h:I

    iget v7, v0, Lcom/android/wm/shell/pip/phone/d;->i:I

    iget-wide v8, v0, Lcom/android/wm/shell/pip/phone/d;->j:J

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/d;->k:Landroid/view/MagnificationSpec;

    move-wide v15, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-wide/from16 v23, v8

    move-object/from16 v25, v0

    invoke-static/range {v14 .. v25}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->c(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    return-void

    :goto_4e
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/d;->b:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iget-wide v2, v0, Lcom/android/wm/shell/pip/phone/d;->c:J

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/d;->e:Landroid/graphics/Region;

    iget v5, v0, Lcom/android/wm/shell/pip/phone/d;->f:I

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/d;->g:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v7, v0, Lcom/android/wm/shell/pip/phone/d;->h:I

    iget v8, v0, Lcom/android/wm/shell/pip/phone/d;->i:I

    iget-wide v9, v0, Lcom/android/wm/shell/pip/phone/d;->j:J

    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/d;->k:Landroid/view/MagnificationSpec;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/d;->d:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-wide/from16 v26, v9

    move-object/from16 v28, v11

    invoke-static/range {v18 .. v29}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->d(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method
