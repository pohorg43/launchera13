.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->b(Lcom/android/wm/shell/legacysplitscreen/DividerView;Z)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/c;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->c(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
