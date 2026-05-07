.class public final synthetic Lcom/android/launcher3/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/l0;

.field public static final synthetic c:Lcom/android/launcher3/l0;

.field public static final synthetic d:Lcom/android/launcher3/l0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/l0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l0;->b:Lcom/android/launcher3/l0;

    new-instance v0, Lcom/android/launcher3/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l0;->c:Lcom/android/launcher3/l0;

    new-instance v0, Lcom/android/launcher3/l0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l0;->d:Lcom/android/launcher3/l0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/l0;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtLargeDeviceImpl;

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtLargeDeviceImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x0
    new-instance p0, Lcom/android/launcher3/LauncherExtTabletImpl;

    invoke-direct {p0}, Lcom/android/launcher3/LauncherExtTabletImpl;-><init>()V

    return-object p0

    :goto_12
    new-instance p0, Lcom/android/launcher3/WorkspaceOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/WorkspaceOplusImpl;-><init>()V

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
