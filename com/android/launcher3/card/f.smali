.class public final synthetic Lcom/android/launcher3/card/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/card/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/f;

    invoke-direct {v0}, Lcom/android/launcher3/card/f;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/f;->a:Lcom/android/launcher3/card/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/card/NoPermissionHelper;->b(Landroid/view/View;)V

    return-void
.end method
