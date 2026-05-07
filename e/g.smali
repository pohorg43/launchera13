.class public final synthetic Le/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb/h;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Le/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/behavior/DividerManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Le/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .registers 12

    iget v0, p0, Le/g;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object p0, p0, Le/g;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lb/h;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lb/h;->a(Lb/h;Landroid/view/View;IIII)V

    return-void

    :goto_14
    iget-object p0, p0, Le/g;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/launcher/behavior/DividerManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/behavior/DividerManager;->a(Lcom/android/launcher/behavior/DividerManager;Landroid/view/View;IIII)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
