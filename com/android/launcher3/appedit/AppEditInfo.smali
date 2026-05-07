.class public final Lcom/android/launcher3/appedit/AppEditInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditInfo$Companion;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static CONTENT_URI:Landroid/net/Uri; = null

.field public static final Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

.field public static final EX:Ljava/lang/String; = "ex"

.field public static final ICON_STATUS:Ljava/lang/String; = "icon_status"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITTLE_STATUS:Ljava/lang/String; = "tittle_status"


# instance fields
.field private componentName:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private iconStatus:Ljava/lang/Integer;

.field private id:I

.field private modified:I

.field private profileId:I

.field private title:Ljava/lang/String;

.field private tittleStatus:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentAppEditTable()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.launcher.settings/"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppEditInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "componentName"

    const-string v3, "ex"

    const-string/jumbo v4, "profileId"

    const-string/jumbo v5, "modified"

    const-string/jumbo v6, "title"

    const-string v7, "icon_status"

    const-string/jumbo v8, "tittle_status"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppEditInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->id:I

    iput-object p2, p0, Lcom/android/launcher3/appedit/AppEditInfo;->componentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/appedit/AppEditInfo;->ex:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher3/appedit/AppEditInfo;->profileId:I

    iput p5, p0, Lcom/android/launcher3/appedit/AppEditInfo;->modified:I

    iput-object p6, p0, Lcom/android/launcher3/appedit/AppEditInfo;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/launcher3/appedit/AppEditInfo;->iconStatus:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/android/launcher3/appedit/AppEditInfo;->tittleStatus:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, p1

    :goto_8
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getCONTENT_URI$cp()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppEditInfo;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getPROJECTION$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppEditInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCONTENT_URI$cp(Landroid/net/Uri;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/appedit/AppEditInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEx()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->ex:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconStatus()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->iconStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->id:I

    return p0
.end method

.method public final getModified()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->modified:I

    return p0
.end method

.method public final getProfileId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->profileId:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTittleStatus()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->tittleStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->componentName:Ljava/lang/String;

    return-void
.end method

.method public final setEx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public final setIconStatus(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->iconStatus:Ljava/lang/Integer;

    return-void
.end method

.method public final setId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->id:I

    return-void
.end method

.method public final setModified(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->modified:I

    return-void
.end method

.method public final setProfileId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->profileId:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTittleStatus(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->tittleStatus:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AppEditInfo{mId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', ex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->ex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', mProfileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->profileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', mModified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->modified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', icon_status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditInfo;->iconStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', tittleStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditInfo;->tittleStatus:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
