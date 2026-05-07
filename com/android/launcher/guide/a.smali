.class public final synthetic Lcom/android/launcher/guide/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic b:Lcom/android/launcher/guide/a;

.field public static final synthetic c:Lcom/android/launcher/guide/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/a;-><init>(I)V

    sput-object v0, Lcom/android/launcher/guide/a;->b:Lcom/android/launcher/guide/a;

    new-instance v0, Lcom/android/launcher/guide/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/a;-><init>(I)V

    sput-object v0, Lcom/android/launcher/guide/a;->c:Lcom/android/launcher/guide/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/guide/a;->a:I

    packed-switch p0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {p1}, Lcom/android/launcher/guide/AbsGuideView;->a(Landroid/view/View;)V

    return-void

    :goto_a
    invoke-static {p1}, Lcom/android/launcher/touch/ShelfDialog;->d(Landroid/view/View;)V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
