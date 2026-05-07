.class public final synthetic Lcom/android/launcher3/uioverrides/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/uioverrides/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uioverrides/a;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/a;->a:Lcom/android/launcher3/uioverrides/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/content/Context;II)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->z(Landroid/content/Context;II)V

    return-void
.end method
