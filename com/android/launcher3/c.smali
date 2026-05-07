.class public final synthetic Lcom/android/launcher3/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/c;

.field public static final synthetic c:Lcom/android/launcher3/c;

.field public static final synthetic d:Lcom/android/launcher3/c;

.field public static final synthetic e:Lcom/android/launcher3/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/c;->b:Lcom/android/launcher3/c;

    new-instance v0, Lcom/android/launcher3/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/c;->c:Lcom/android/launcher3/c;

    new-instance v0, Lcom/android/launcher3/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/c;->d:Lcom/android/launcher3/c;

    new-instance v0, Lcom/android/launcher3/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/c;->e:Lcom/android/launcher3/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/c;->a:I

    packed-switch p0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    new-instance p0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x1
    new-instance p0, Lcom/android/launcher3/LauncherExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/LauncherExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_12  #0x0
    new-instance p0, Lcom/android/launcher3/AppWidgetResizeFrameExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrameExtOplusImpl;-><init>()V

    return-object p0

    :goto_18
    new-instance p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;

    invoke-direct {p0}, Lcom/android/launcher3/icons/IconCacheExtImplV2;-><init>()V

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
