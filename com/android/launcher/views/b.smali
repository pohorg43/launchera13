.class public final synthetic Lcom/android/launcher/views/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic b:Lcom/android/launcher/views/b;

.field public static final synthetic c:Lcom/android/launcher/views/b;

.field public static final synthetic d:Lcom/android/launcher/views/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/views/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/views/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/views/b;->b:Lcom/android/launcher/views/b;

    new-instance v0, Lcom/android/launcher/views/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/views/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/views/b;->c:Lcom/android/launcher/views/b;

    new-instance v0, Lcom/android/launcher/views/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/views/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/views/b;->d:Lcom/android/launcher/views/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/views/b;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_e

    :pswitch_6  #0x1
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->a(Landroid/view/View;)V

    return-void

    :pswitch_a  #0x0
    invoke-static {p1}, Lcom/android/launcher/views/LauncherLoadingView;->a(Landroid/view/View;)V

    return-void

    :goto_e
    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->b(Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
