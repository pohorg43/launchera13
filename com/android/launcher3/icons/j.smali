.class public final synthetic Lcom/android/launcher3/icons/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/icons/j;

.field public static final synthetic c:Lcom/android/launcher3/icons/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/j;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/icons/j;->b:Lcom/android/launcher3/icons/j;

    new-instance v0, Lcom/android/launcher3/icons/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/j;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/icons/j;->c:Lcom/android/launcher3/icons/j;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/j;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {}, Lcom/android/launcher3/icons/IconCache;->n()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->E()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
