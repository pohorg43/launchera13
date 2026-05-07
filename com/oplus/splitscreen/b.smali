.class public final synthetic Lcom/oplus/splitscreen/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/splitscreen/DividerRotationTips;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:I

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/view/SurfaceControl;Landroid/view/View;ILandroid/graphics/Rect;I)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/b;->b:Lcom/oplus/splitscreen/DividerRotationTips;

    iput-object p2, p0, Lcom/oplus/splitscreen/b;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/oplus/splitscreen/b;->d:Landroid/view/View;

    iput p4, p0, Lcom/oplus/splitscreen/b;->e:I

    iput-object p5, p0, Lcom/oplus/splitscreen/b;->f:Landroid/graphics/Rect;

    iput p6, p0, Lcom/oplus/splitscreen/b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/view/View;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;I)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/b;->b:Lcom/oplus/splitscreen/DividerRotationTips;

    iput-object p2, p0, Lcom/oplus/splitscreen/b;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/splitscreen/b;->c:Landroid/view/SurfaceControl;

    iput p4, p0, Lcom/oplus/splitscreen/b;->e:I

    iput-object p5, p0, Lcom/oplus/splitscreen/b;->f:Landroid/graphics/Rect;

    iput p6, p0, Lcom/oplus/splitscreen/b;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget v0, p0, Lcom/oplus/splitscreen/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/oplus/splitscreen/b;->b:Lcom/oplus/splitscreen/DividerRotationTips;

    iget-object v2, p0, Lcom/oplus/splitscreen/b;->c:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/splitscreen/b;->d:Landroid/view/View;

    iget v4, p0, Lcom/oplus/splitscreen/b;->e:I

    iget-object v5, p0, Lcom/oplus/splitscreen/b;->f:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oplus/splitscreen/b;->g:I

    invoke-static/range {v1 .. v6}, Lcom/oplus/splitscreen/DividerRotationTips;->e(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/view/SurfaceControl;Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void

    :goto_16
    iget-object v7, p0, Lcom/oplus/splitscreen/b;->b:Lcom/oplus/splitscreen/DividerRotationTips;

    iget-object v8, p0, Lcom/oplus/splitscreen/b;->d:Landroid/view/View;

    iget-object v9, p0, Lcom/oplus/splitscreen/b;->c:Landroid/view/SurfaceControl;

    iget v10, p0, Lcom/oplus/splitscreen/b;->e:I

    iget-object v11, p0, Lcom/oplus/splitscreen/b;->f:Landroid/graphics/Rect;

    iget v12, p0, Lcom/oplus/splitscreen/b;->g:I

    invoke-static/range {v7 .. v12}, Lcom/oplus/splitscreen/DividerRotationTips;->c(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/view/View;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;I)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
